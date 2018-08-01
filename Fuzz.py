import Settings
import sys
from gen import *
from inst import *
from util import LogPrint
import time
from gen import *

class Fuzzer:
	def __init__(self,solvers,mutater,logName = str(time.time()),modelName = None):
		self.nIter = Settings.FuzzerNumberOfIterations
		self.nPop = Settings.FuzzerPopulation
		self.nKeepBest = Settings.FuzzerNumberOfHardestKept
		self.nMutations = Settings.FuzzerNumberOfMutations
		self.nRandom = self.nPop - self.nKeepBest - self.nKeepBest * self.nMutations
		self.logName = logName
		self.gen = mk_gen()
		self.mutater = mutater(self.gen,modelName)
		self.mutater.ReadModel()
		self.startPop = Settings.FuzzerNumberPopulationStart
		self.solvers = []
		for i in range(len(solvers)):
			self.solvers.append(solvers[i]())
		Settings.PrimarySolver = self.solvers[0].name
	def Fuzz(self):
		return self.FuzzerLoop()
			
	def FuzzerLoop(self):
		LogPrint("Fuzzer Start")
		hardnessLog = []
		population = []
		ret = []
		log = open("tmpdata/run"+self.logName + str(Settings.PythonRandomSeed) + self.mutater.name +".txt","w")
		instanceSet = set()
		for iter in range(self.nIter):
			LogPrint("----------------------------------------------------")
			LogPrint("Starting Generation #"+str(iter))
			if iter != 0 and hardnessLog[-1] >= Settings.SolverTimeout and Settings.FuzzerOverrideTerminationOnMaxScore == False:
				LogPrint("Achieved expected score, Fuzzing Complete.")
				while len(hardnessLog) < self.nIter:
					hardnessLog.append(hardnessLog[-1])
					log.write(str(hardnessLog[-1])+"\n")
					log.flush()
				break
			LogPrint("Solving.")
			if iter == 0:
				for i in range(self.startPop):
					inst = self.gen.gen()
					while inst.ToString() in instanceSet:
						inst = self.gen.gen()
					instanceSet.add(inst.ToString())
					population.append(inst)
				for i in range(self.startPop):
					for j in range(len(self.solvers)):
						self.solvers[j].Solve(population[i],self.gen.consts)
					LogPrint("\t("+str(i+1)+"/"+str(self.startPop)+")\t" + "Score = " +str(population[i].Score()) + "\tTime = " + str(population[i].times) + "\tIsSat = " + str(population[i].stdout))
			else:
				assert len(population) == self.nKeepBest, "error"
				n = 0
				for i in range(self.nKeepBest):
					LogPrint("\t("+str(n+1)+"/"+str(self.nPop)+")\t Kept Inst\t" + "Score = " +str(population[i].Score()) + "\tTime = " + str(population[i].times) + "\tIsSat = "+str(population[i].stdout))
					n += 1
				for imut in range(self.nMutations):
					inst = self.mutater.Mutate(population[i])
					mutFail = False
					if inst.ToString() in instanceSet:
						mutFail = True
						while inst.ToString() in instanceSet:
							inst = self.gen.gen()
							LogPrint("\t Mutation Failed.")
					instanceSet.add(inst.ToString())
					population.append(inst)
					for k in range(len(self.solvers)):
						self.solvers[k].Solve(population[-1],self.gen.consts)
					if Settings.BanditTrainingMode and not mutFail:
						self.mutater.Reward(population[0].Score() - population[imut].Score())
					LogPrint("\t("+str(n+1)+"/"+str(self.nPop)+")\t Mutated Inst\t" + "Score = " +str(population[-1].Score()) + "\tTime = " + str(population[-1].times) + "\tIsSat = "+str(population[-1].stdout))
					n += 1
					if Settings.BanditTrainingMode:
						if self.mutater.nIter >= Settings.BanditNumberTrainingIterations:
							sys.exit(1)
						
				for i in range(self.nRandom):
					inst = self.mutater.Mutate(population[i])
					if inst.ToString() in instanceSet:
						while inst.ToString() in instanceSet:
							inst = self.gen.gen()
					population.append(inst)
					for j in range(len(self.solvers)):
						self.solvers[j].Solve(population[-1],self.gen.consts)
					LogPrint("\t("+str(n+1)+"/"+str(self.nPop)+")\tRand Inst\t" + "Score = " +str(population[-1].Score()) + "\tTime = " + str(population[-1].times) + "\tIsSat = "+str(population[-1].stdout))
					n += 1
			self.mutater.WriteModel()
			population.sort()
			
			hardestSum = 0.0
			LogPrint("Testing Finished, analyzing and creating next generation.")
			ret = []
			for i in range(self.nKeepBest):
				hardestSum += population[-1-i].Score()
				ret.append(population[-1-i])
				
			LogPrint(" Hardest Average = " + str(hardestSum/self.nKeepBest))
			hardnessLog.append(hardestSum/self.nKeepBest)
			log.write(str(hardestSum/self.nKeepBest)+"\n")
			log.flush()
			population = ret
			population[0].ToFile("tmpdata/final/"+"run"+self.logName + str(Settings.PythonRandomSeed) + self.mutater.name)
		self.mutater.WriteModel()
		if len(hardnessLog) == self.nIter:
			LogPrint("Ranout of iterations.")
		return ret
	
	def Find_Bugs(self):
		while True:
			self.mutater.WriteModel()
			inst = self.gen.gen()
			for i in range(len(self.solvers)):
				self.solvers[i].Solve(inst,self.gen.consts)
			if inst.Inconsistent():
				inst.ToFile("tmpdata/bug/" + inst.name + ".smt")
				continue
			inst = self.mutater.Mutate(inst)
			for i in range(len(self.solvers)):
				self.solvers[i].Solve(inst,self.gen.consts)
			if inst.Inconsistent():
				inst.ToFile("tmpdata/bug/" + inst.name + ".smt")
				self.mutater.Reward(1.0)
			else:
				self.mutater.Reward(-1.0)
