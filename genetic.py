#!/usr/bin/env python3

'''
The fuzzer tool that generates new problems.
'''


import sys
import os
from slap.mk import *
from slap.interface.solver import solve
from slap.interface.printer import smtlib_string
from gen import *
import time
import argparse


class inst:
	def __init__(self, val ,maxChars,maxTime):
		self.val = val
		self.solved = False
		self.time = -1
		self.numChars = len(str(val))
		self.maxChars = maxChars
		self.maxTime = maxTime
	def Solve(self,consts,saveIfHard=True,outFilePath="tmpdata/hard/"):
		if self.solved:
			return
		ast = [mk_set_logic("QF_FP")]
		ast.append(mk_assert(self.val))
		ast.append(mk_check_sat())
		self.solved = True
		res = solve(ast,consts)
		self.time = min(res['time'],self.maxTime)
		
		if self.time >= self.maxTime * 0.90:
			out = open(outFilePath+str(time.time())+".smt2","w")
			out.write(";  time  = "  + str(self.time) + "\n" )
			out.write(";  chars = "  + str(self.numChars) + "\n" )
			out.write(";  score = "  + str(self.Score()) + "\n")
			out.write(self.ToString(consts))
			out.close()
		return
	def Score(self):
		return (self.time/self.maxTime) * (self.maxChars - self.numChars)/self.maxChars
	def ToString(self,consts):
		ast = [mk_set_logic("QF_FP")]
		ast.append(mk_assert(self.val))
		ast.append(mk_check_sat())
		return str(smtlib_string(ast,consts))
	
	def __lt__(self, other):
		return self.Score() < other.Score()
		


def main():

	parser = argparse.ArgumentParser(description='Float Fuzz Genetic')
	parser.add_argument('id', type=str)
	

	print ("Genetic Algorithm Fuzzer Start!",flush=True)
	maxTime=600
	
	rne = mk_fp_rne()
	ops = []
	ops.append(operator(mk_fp_abs,				nargs=1,isrounded=False,isBoolean=False))
	ops.append(operator(mk_fp_neg,				nargs=1,isrounded=False,isBoolean=False))
	ops.append(operator(mk_fp_add,				nargs=2,isrounded=True,	isBoolean=False))
	ops.append(operator(mk_fp_sub,				nargs=2,isrounded=True,	isBoolean=False))
	ops.append(operator(mk_fp_mul,				nargs=2,isrounded=True,	isBoolean=False))
	#ops.append(operator(mk_fp_div,				nargs=2,isrounded=True,	isBoolean=False))
	#ops.append(operator(mk_fp_fma,				nargs=3,isrounded=True,	isBoolean=False))
	#ops.append(operator(mk_fp_rem,				nargs=2,isrounded=True,	isBoolean=False))
	#ops.append(operator(mk_fp_roundToIntegral,	nargs=2,isrounded=True,	isBoolean=False))
	#ops.append(operator(mk_fp_min,				nargs=2,isrounded=False,isBoolean=False))
	#ops.append(operator(mk_fp_max,				nargs=2,isrounded=False,isBoolean=False))
	ops.append(operator(mk_fp_leq,				nargs=2,isrounded=False,isBoolean=True))
	ops.append(operator(mk_fp_lt,				nargs=2,isrounded=False,isBoolean=True))
	ops.append(operator(mk_fp_geq,				nargs=2,isrounded=False,isBoolean=True))
	ops.append(operator(mk_fp_gt,				nargs=2,isrounded=False,isBoolean=True))
	ops.append(operator(mk_fp_eq,				nargs=2,isrounded=False,isBoolean=True))
	ops.append(operator(mk_fp_isNormal,			nargs=1,isrounded=False,isBoolean=True))
	ops.append(operator(mk_fp_isSubnormal,		nargs=1,isrounded=False,isBoolean=True))
	ops.append(operator(mk_fp_isZero,			nargs=1,isrounded=False,isBoolean=True))
	ops.append(operator(mk_fp_isNan,			nargs=1,isrounded=False,isBoolean=True))
	ops.append(operator(mk_fp_isNegative,		nargs=1,isrounded=False,isBoolean=True))
	ops.append(operator(mk_fp_isPositive,		nargs=1,isrounded=False,isBoolean=True))
	
	gen = Generator(numConsts=15,ops=ops,exponent=8,mantisa=24,roundMode=rne,maxDepth=10)


	log = open("tmpdata/run"+str(time.time())+".txt","w")

	
	#Population sizeing
	nGener = 50	
	nPop = 10
	nKeepBest = 3
	nMutations = 1
	nRandom = nPop - nKeepBest - nKeepBest * nMutations 

	hardnessLog = []
	population = []
	
	#approximate char length upperbound
	print("Approximating maximum chars in formula.",flush=True)
	maxval = 0
	for i in range(1000):
		instance = gen.gen(leafProb=0)
		length = len(str(instance))
		maxval = max(length,maxval)
	maxChars = maxval+50
	print("Estimated max char value of: " + str(maxChars),flush=True)


	#init pop
	for i in range(nPop):
		population.append(inst(gen.gen(),maxChars,maxTime))
	##MAIN LOOP
	for generation in range(nGener):
		print("----------------------------------------------------",flush=True)
		print("Starting Generation #"+str(generation+1),flush=True)
		if generation != 0 and hardnessLog[-1] > 0.98:
			print("Achieved expected score",flush=True)
			break
	
		for i in range(nPop):
			population[i].Solve(gen.consts)
			print("\t("+str(i+1)+"/"+str(nPop)+")\t" + "Score = " +str(round(population[i].Score(),3)) + "\tTime = " + str(round(population[i].time,3)) + "\tChars = "+str(population[i].numChars),flush=True)
		population.sort()
		nextGen = []
		hardness = 0.0
		print("Testing Finished, analyzing and creating next generation.",flush=True)
		for i in range(nKeepBest):
			hardness += population[-1-i].Score()
			nextGen.append(population[-1-i])
			for i in range(nMutations):
				nextGen.append(inst(gen.mutate(population[-1-i].val),maxChars,maxTime))
		while len(nextGen) < nPop:
			nextGen.append(inst(gen.gen(),maxChars,maxTime))
		print(" Hardness = " + str( hardness/nKeepBest,flush=True))
		hardnessLog.append(hardness/nKeepBest)
		population = nextGen
		log.write(str(hardness/nKeepBest)+"\n")
		log.flush()

	dir = "run"+str(time.time())
	print("Finished. Logging Hardest in tmpdata/final/" + dir,flush=True)
	os.makedirs("tmpdata/final/"+dir)
	population.sort()
	for i in range(nKeepBest):
		out = open("tmpdata/final/"+dir+"/inst" + str(i)+".smt2","w")
		out.write(";  time  = " + str(population[-i-1].time)+ "\n" )
		out.write(";  chars = " + str(population[-i-1].numChars)+ "\n" )
		out.write(";  score = " + str(population[-i-1].Score())+ "\n" )
		out.write(population[-i-1].ToString(gen.consts))
		out.close()

if __name__ == '__main__':
	main()
	print("Termination.",flush=True)