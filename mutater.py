from random import randint,choice
from gen import mk_gen
from abc import ABCMeta, abstractmethod
import copy
from inst import *
import numpy as np
import pickle
from Ast_List import *
from util import LogPrint
class Mutater(object):

	@abstractmethod
	def Mutate(self, instance):
		pass
		
	@abstractmethod
	def Reward(self,rewardVal):
		pass
		
	@abstractmethod
	def WriteModel(self):
		pass
		
	@abstractmethod
	def ReadModel(self):
		pass

		
class RandomMutater(Mutater):
	def __init__(self,gen=None,id=None):
		if gen == None:
			self.gen = mk_gen()
		else:
			self.gen = gen
		self.name = "random"
		
		if id == None:
			self.id = Settings.PythonRandomSeed
		else:
			self.id = id
			
		self.nIter = 0
		
	def Mutate(self, instance):
		numTerms = instance.NumTerms()
		n = randint(0,numTerms-1)
		ret = inst(copy.deepcopy(instance.val),self.gen.consts)
		[ret.val,indx,success] = self.mutate_core(ret.val,0,n,0)
		return ret
		
	def mutate_core(self,ast_list,indx,n,depth=0):
		if len(ast_list) == 1:
			if indx == n:
				new_const = choice(self.gen.consts)
				while new_const.name == ast_list[0].name:
					new_const = choice(self.gen.consts)
				return [[new_const],indx,True]
			else:
				return [ast_list,indx+1,False]
		op = ast_list[0]
		
		if op.isBoolean:
			if indx == n:
				oper = choice(self.gen.BooleanOps())
				while oper.name == op.name:
					oper = choice(self.gen.BooleanOps())
				while len(ast_list) < oper.nargs + 1:
					ast_list.append(self.gen.gen(depth+1).val)
				while len(ast_list) > oper.nargs + 1:
					ast_list.pop()
				ast_list[0] = oper
				return [ast_list,indx,True]
			else:
				indx += 1
		else: # FP OP
			if indx == n:
				oper = choice(self.gen.FloatOps())
				while oper.name == op.name:
					oper = choice(self.gen.FloatOps())
				retForm = []
				retForm.append(oper)
				if oper.isRounded:
					retForm.append(self.gen.roundMode)
				start = 1
				if op.isRounded:
					start = 2	
				oper_indx = 0
				for i in range(oper.nargs):
					if oper_indx < op.nargs:
						retForm.append(ast_list[start])
						start += 1
						oper_indx += 1
					else:
						retForm.append(self.gen.gen(depth).val)
				return [retForm,indx,True]
			else:
				indx +=1
		start = 1
		if op.isRounded:
			start = 2
		for i in range(start,len(ast_list)):
			[ast_list[i], indx, done] = self.mutate_core(ast_list[i],indx,n,depth+1)
			if done:
				break
		return [ast_list,indx,done]
		
	def Reward(self,rewardVal):
		if rewardVal >= 0:
			rewardVal = 1.0
		else:
			rewardVal = 0.0
		
		
		self.nIter += 1
		with open("models/" + self.name + str(self.id) +".rewards", "a") as myfile:
			myfile.write(str(rewardVal) + "\n")
		
	def WriteModel(self):
		try:
			with open("models/" +self.name + str(self.id) +  ".model", 'w') as file:	
				file.write(str(self.nIter) + "\n")
		except IOError as e:
			LogPrint("Couldn't save file.",verbose=3)
		
	def ReadModel(self):
		try:
			with open("models/" +self.name + str(self.id) +  ".model", 'r') as file:
				lines = file.readlines()					
				self.nIter = int(lines[0])
				
		except IOError as e:
			LogPrint("Couldn't open model.",verbose=3)
				
		
class EpsilonBandit(Mutater):
	def __init__(self,gen=None,id=None):
		if gen == None:
			self.gen = mk_gen()
		else:
			self.gen = gen
			
			
		if id == None:
			self.id = Settings.PythonRandomSeed
		else:
			self.id = id	
			
		self.nIter = 0
			
		self.epsilon = 0.10
		
		self.ops = []
		for i in range(len(gen.ops)):
			self.ops.append(gen.ops[i])
#		for i in range(len(gen.boolean_ops)):
#			self.ops.append(gen.boolean_ops[i])

		self.name = "EpsilonBandit"
		self.nActions = len(self.ops)
		self.n = 0
		self.N = np.ones(self.nActions,dtype=int)
		self.empiricalMeans = np.zeros(len(self.ops))
		self.lastAction = -1
		
	def Mutate(self, instance):
		LogPrint("\t\tinput  " + instance.ToString(),verbose=3)
		instance = inst(copy.deepcopy(instance.val),self.gen.consts)
		self.lastAction = -1
		if np.random.rand(1)[0] < self.epsilon:
			self.lastAction = np.random.randint(0,self.nActions)
		else:
			val = np.NINF
			for a in range(self.nActions):
				if self.empiricalMeans[a] > val:
					self.lastAction , val = a, self.empiricalMeans[a]
		oper = self.ops[self.lastAction]
		
		LogPrint("\t\taction = " + oper.name,verbose=3)
		done = False
		c = 0
		while not done and c < 50:
			[instance,done] = replace_fixed_op_randomly(instance,self.ops[self.lastAction],self.gen)
			c += 1
		LogPrint("\t\treturn " + instance.ToString(),verbose=3)
		
		return instance
	
	def Reward(self,rewardVal):
	
		if rewardVal >= 0:
			rewardVal = 1.0
		else:
			rewardVal = 0.0
	
		self.empiricalMeans[self.lastAction] = (self.N[self.lastAction] * self.empiricalMeans[self.lastAction] + rewardVal) / (self.N[self.lastAction] + 1)
		self.N[self.lastAction] += 1
		self.n += 1
		LogPrint("\t\tempirical means = " + str(self.empiricalMeans),verbose=3)
		with open("models/" + self.name + str(self.id) +".rewards", "a") as myfile:
			myfile.write(str(rewardVal) + "\n")
		self.nIter += 1
	def WriteModel(self):
		try:
			with open("models/" +self.name + str(self.id) +  ".model", 'w') as file:
				file.write(str(self.epsilon) + "\n")
				
				file.write(str(self.n) + "\n")
				
				for i in range(len(self.N)):
					file.write(str(self.N[i]) + " ")
				file.write("\n")
				
				for i in range(len(self.empiricalMeans)):
					file.write(str(self.empiricalMeans[i]) + " ")
				file.write("\n")
				
				file.write(str(self.nIter) + "\n")
		except IOError as e:
			LogPrint("Couldn't save file.",verbose=3)
		
	def ReadModel(self):
		try:
			with open("models/" +self.name + str(self.id) +  ".model", 'r') as file:
				lines = file.readlines()
				self.epsilon = float(lines[0])
				self.n = int(lines[1])
				
				self.N = []
				lines[2] = lines[2].split(" ")
				while lines[2][-1] == "" or lines[2][-1] == "\n":
					lines[2].pop()
				for i in range(len(lines[2])):
					self.N.append(int(lines[2][i]))
				
				
				self.empiricalMeans = []
				lines[3] = lines[3].split(" ")
				while lines[3][-1] == "" or lines[3][-1] == "\n":
					lines[3].pop()
				for i in range(len(lines[3])):
					self.empiricalMeans.append(float(lines[3][i]))
					
					
				self.nIter = int(lines[4])
				
		except IOError as e:
			LogPrint("Couldn't open model.",verbose=3)
			
			
	
class ThompsonBandit(Mutater):
	def __init__(self,gen=None,id=None):
		if gen == None:
			self.gen = mk_gen()
		else:
			self.gen = gen

		if id == None:
			self.id = Settings.PythonRandomSeed
		else:
			self.id = id
			
		self.nIter = 0
		

		self.ops = []
		for i in range(len(gen.ops)):
			self.ops.append(gen.ops[i])
#		for i in range(len(gen.boolean_ops)):
#			self.ops.append(gen.boolean_ops[i])

		self.name = "ThompsonSampleBandit"
		self.nActions = len(self.ops)
		self.k = 1
		self.empiricalMeans = np.zeros(len(self.ops))
		self.lastAction = -1
		self.alphaBetaPairs = []
		for i in range(self.nActions):
			self.alphaBetaPairs.append([1,1])
		
	def Mutate(self, instance):
		LogPrint("\t\tinput  " + instance.ToString(),verbose=3)
		instance = inst(copy.deepcopy(instance.val),self.gen.consts)
		
		
		#Sample
		R = np.zeros([self.nActions,self.k])
		for a in range(self.nActions):
			for i in range(self.k):
				R[a][i] = np.random.beta(self.alphaBetaPairs[a][0],self.alphaBetaPairs[a][1])
		for a in range(self.nActions):
			sum = 0.0
			for i in range(self.k):
				sum += R[a][i]
			self.empiricalMeans[a] = 1.0/self.k * sum
				
		self.lastAction = -1
		val = np.NINF
		for a in range(self.nActions):
			if self.empiricalMeans[a] > val:
				self.lastAction, val = a, self.empiricalMeans[a]
				
		oper = self.ops[self.lastAction]
		
		LogPrint("\t\taction = " + oper.name,verbose=3)
		done = False
		c = 0
		while not done and c < 50:
			[instance,done] = replace_fixed_op_randomly(instance,self.ops[self.lastAction],self.gen)
			c += 1
		LogPrint("\t\treturn " + instance.ToString(),verbose=3)
		return instance
	
	def Reward(self,rewardVal):
		if rewardVal >= 0:
			self.alphaBetaPairs[self.lastAction][0]+=1
			rewardVal = 1.0
		else:
			self.alphaBetaPairs[self.lastAction][1]+=1
			rewardVal = 0.0
			
		LogPrint("\t\tempirical means = " + str(self.empiricalMeans),verbose=3)
		with open("models/" + self.name + str(self.id) +".rewards", "a") as myfile:
			myfile.write(str(rewardVal) + "\n")
		
		self.nIter += 1
		
	def WriteModel(self):
		try:
			with open("models/" +self.name + str(self.id) +  ".model", 'w') as file:
				file.write(str(self.k) + "\n")
								
				for i in range(len(self.alphaBetaPairs)):
					file.write(str(self.alphaBetaPairs[i][0]) + " " + str(self.alphaBetaPairs[i][1]) + " ")
				file.write("\n")
				
				file.write(str(self.nIter) + "\n")
				
		except IOError as e:
			LogPrint("Couldn't save file.",verbose=3)
		
	def ReadModel(self):
		try:
			with open("models/" +self.name + str(self.id) +  ".model", 'r') as file:
				lines = file.readlines()
				self.k = int(lines[0])
				
				self.alphaBetaPairs = []
				lines[1] = lines[1].split(" ")
				while lines[1][-1] == "" or lines[1][-1] == "\n":
					lines[1].pop()
				for i in range(self.nActions):
					self.alphaBetaPairs.append([int(lines[1][2*i]),int(lines[1][2*i+1])])
				
				self.nIter = int(lines[2])
				
		except IOError as e:
			LogPrint("Couldn't open model.",verbose=3)
			
			
class UCBBandit(Mutater):
	def __init__(self,gen=None,id=None):
		if gen == None:
			self.gen = mk_gen()
		else:
			self.gen = gen

		if id == None:
			self.id = Settings.PythonRandomSeed
		else:
			self.id = id	
			
		self.nIter = 0	
			
		self.ops = []
		for i in range(len(gen.ops)):
			self.ops.append(gen.ops[i])
#		for i in range(len(gen.boolean_ops)):
#			self.ops.append(gen.boolean_ops[i])

		self.name = "UCBBandit"
		self.nActions = len(self.ops)
		self.empiricalMeans = np.zeros(self.nActions)
		self.N = np.ones(self.nActions,dtype=int)
		self.lastAction = -1
		self.n = 0

		
	def Mutate(self, instance):
		("\t\tinput  " + instance.ToString())
		instance = inst(copy.deepcopy(instance.val),self.gen.consts)
		
		Hoef = np.zeros(self.nActions)
		for a in range(self.nActions):
			Hoef[a] = self.empiricalMeans[a] + np.sqrt( (2.0 * np.log(self.n+1.0))/self.N[a])
		self.lastAction = -1
		maxVal = np.NINF
		for a in range(self.nActions):
			if Hoef[a] > maxVal:
				self.lastAction, maxVal = a,Hoef[a]
				
		oper = self.ops[self.lastAction]
		
		LogPrint("\t\taction = " + oper.name,verbose=3)
		done = False
		c = 0
		while not done and c < 50:
			[instance,done] = replace_fixed_op_randomly(instance,self.ops[self.lastAction],self.gen)
			c += 1
		LogPrint("\t\treturn " + instance.ToString(),verbose=3)
		return instance
	
	def Reward(self,rewardVal):
	
		if rewardVal >= 0:
			rewardVal = 1.0
		else:
			rewardVal = 0.0
	
		self.empiricalMeans[self.lastAction] = (self.N[self.lastAction] * self.empiricalMeans[self.lastAction] + rewardVal) / (self.N[self.lastAction] + 1)
		self.N[self.lastAction] += 1
		self.n += 1
		LogPrint("\t\tempirical means = " +str(self.empiricalMeans),verbose=3)
		with open("models/" + self.name + str(self.id) +".rewards", "a") as myfile:
			myfile.write(str(rewardVal) + "\n")
		self.nIter += 1
		
	def WriteModel(self):
		try:
			with open("models/" +self.name + str(self.id) +  ".model", 'w') as file:
				for i in range(len(self.N)):
					file.write(str(self.N[i]) + " ")
				file.write("\n")
				
				for i in range(len(self.empiricalMeans)):
					file.write(str(self.empiricalMeans[i]) + " ")
				file.write("\n")
				
				file.write(str(self.n) + "\n")
				
				file.write(str(self.nIter) + "\n")
				
		except IOError as e:
			LogPrint("Couldn't save file.",verbose=3)
		
	def ReadModel(self):
		try:
			with open("models/" +self.name + str(self.id) +  ".model", 'r') as file:
				lines = file.readlines()
				
				self.N = []
				lines[0] = lines[0].split(" ")
				while lines[0][-1] == "" or lines[0][-1] == "\n":
					lines[0].pop()
				for i in range(len(lines[0])):
					self.N.append(int(lines[0][i]))
				
				
				self.empiricalMeans = []
				lines[1] = lines[1].split(" ")
				while lines[1][-1] == "" or lines[1][-1] == "\n":
					lines[1].pop()
				for i in range(len(lines[1])):
					self.empiricalMeans.append(float(lines[1][i]))
					
				self.n = int(lines[2])
				
				self.nIter = int(lines[3])
				
		except IOError as e:
			LogPrint("Couldn't open model.",verbose=3)

