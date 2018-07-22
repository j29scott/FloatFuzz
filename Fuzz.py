import Settings
from gen import *
from inst import *
from util import LogPrint
import time
from gen import *

class Fuzzer:
	def __init__(self,mutater,logName = str(time.time())):
		self.nIter = Settings.FuzzerNumberOfIterations
		self.nPop = Settings.FuzzerPopulation
		self.nKeepBest = Settings.FuzzerNumberOfHardestKept
		self.nMutations = Settings.FuzzerNumberOfMutations
		self.nRandom = self.nPop - self.nKeepBest - self.nKeepBest * self.nMutations
		self.logName = logName
		self.gen = mk_gen()
		self.mutater = mutater(self.gen)
		self.mutater.ReadModel()
		self.startPop = Settings.FuzzerNumberPopulationStart
		
	def Fuzz(self):
		LogPrint("Fuzzer Start")
		hardnessLog = []
		population = []
		log = open("tmpdata/run"+self.logName+".txt","w")
		ret = []
		for iter in range(self.nIter):
			LogPrint("----------------------------------------------------")
			LogPrint("Starting Generation #"+str(iter))
			if iter != 0 and hardnessLog[-1] >= Settings.SolverTimeout and Settings.FuzzerOverrideTerminationOnMaxScore == False:
				LogPrint("Achieved expected score, Fuzzing Complete.")
				break
			LogPrint("Solving.")
			if iter == 0:
				for i in range(self.startPop):
					population.append(self.gen.gen())
				for i in range(self.startPop):
					population[i].Solve(self.gen.consts)
					LogPrint("\t("+str(i+1)+"/"+str(self.startPop)+")\t" + "Score = " +str(round(population[i].Score(),3)) + "\tTime = " + str(round(population[i].time,3)) + "\tIsSat = "+str(population[i].stdout))
			else:
				assert len(population) == self.nKeepBest, "error"
				n = 0
				for i in range(self.nKeepBest):
					LogPrint("\t("+str(n+1)+"/"+str(self.nPop)+")\t Kept Inst\t" + "Score = " +str(round(population[i].Score(),3)) + "\tTime = " + str(round(population[i].time,3)) + "\tIsSat = "+str(population[i].stdout))
					n += 1
					for j in range(self.nMutations):
						population.append(self.mutater.Mutate(population[i]))
						population[-1].Solve(self.gen.consts)
						self.mutater.Reward(population[-1].time - population[i].time)
						LogPrint("\t("+str(n+1)+"/"+str(self.nPop)+")\t Mutated Inst\t" + "Score = " +str(round(population[-1].Score(),3)) + "\tTime = " + str(round(population[-1].time,3)) + "\tIsSat = "+str(population[-1].stdout))
						n += 1
				for i in range(self.nRandom):
					population.append(self.gen.gen())
					population[-1].Solve(self.gen.consts)
					LogPrint("\t("+str(n+1)+"/"+str(self.nPop)+")\tRand Inst\t" + "Score = " +str(round(population[-1].Score(),3)) + "\tTime = " + str(round(population[-1].time,3)) + "\tIsSat = "+str(population[-1].stdout))
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
		self.mutater.WriteModel()
		return ret
			
			
		if len(hardnessLog) == nIter:
			LogPrint("Ranout of iterations.")