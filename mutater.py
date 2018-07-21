from random import randint,choice
from gen import mk_gen
from abc import ABCMeta, abstractmethod
import copy
from inst import *
import numpy as np
import pickle
from Ast_List import *

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
	def __init__(self,gen=None):
		if gen == None:
			self.gen = mk_gen()
		else:
			self.gen = gen
		self.name = "random"
		
	def Mutate(self, instance):
		numTerms = instance.NumTerms()
		n = randint(0,numTerms-1)
		ret = inst(copy.deepcopy(instance.val))
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
			[ast_list[i], indx, done] = self.mutater(ast_list[i],indx,n,depth+1)
			if done:
				break
		return [ast_list,indx,done]
		
	def Reward(self,rewardVal):
		pass
		
	def WriteModel(self):
		pass
		
	def ReadModel(self):
		pass	
		
class EpsilonBandit(Mutater):
	def __init__(self,gen=None):
		print("hello world.")
		if gen == None:
			self.gen = mk_gen()
		else:
			self.gen = gen
			
		self.epsilon = 0.10
		
		self.ops = []
		for i in range(len(gen.ops)):
			self.ops.append(gen.ops[i])
#		for i in range(len(gen.boolean_ops)):
#			self.ops.append(gen.boolean_ops[i])

		self.name = "EpsilonBandit"
		self.nActions = len(self.ops)
		self.n = 0
		self.N = np.ones(self.nActions)
		self.empiricalMeans = np.zeros(len(self.ops))
		self.lastAction = -1
		
	def Mutate(self, instance):
		print("input  " + instance.ToString())
		instance = copy.deepcopy(instance)
		instance.solved = False
		self.lastAction = -1
		if np.random.rand(1)[0] < self.epsilon:
			self.lastAction = np.random.randint(0,self.nActions)
		else:
			val = np.NINF
			for a in range(self.nActions):
				if self.empiricalMeans[a] > val:
					self.lastAction , val = a, self.empiricalMeans[a]
		oper = self.ops[self.lastAction]
		
		
		done = False
		while not done:
			[instance,done] = replace_fixed_op_randomly(instance,self.ops[self.lastAction],self.gen)
		print("return " + instance.ToString())
		return instance
	
	def Reward(self,rewardVal):
		self.empiricalMeans[self.lastAction] = (self.N[self.lastAction] * self.empiricalMeans[self.lastAction] + rewardVal) / (self.N[self.lastAction] + 1)
		self.N[self.lastAction] += 1
		self.n += 1
		
	def WriteModel(self):
		try:
			with open("models/" +self.name + ".model", 'wb') as file:
				pickle.dump(self,file)
		except IOError as e:
			print("Couldn't open file.")
		
	def ReadModel(self):
		try:
			with open("models/" +self.name + ".model", 'rb') as file:
				self = pickle.load(file)
		except IOError as e:
			print("Couldn't open or write to file (%s)." % e)

