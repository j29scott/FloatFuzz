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
from inst import *

def main():

	parser = argparse.ArgumentParser(description='Float Fuzz Genetic')
	parser.add_argument('id', type=str)
	

	print ("Genetic Algorithm Fuzzer Start!",flush=True)
	maxTime=600
	
	gen = mk_default_gen()


	log = open("tmpdata/run"+str(time.time())+".txt","w")

	
	#Population sizeing
	nGener = 25	
	nPop = 5
	nKeepBest = 1
	nMutations = 2
	nRandom = nPop - nKeepBest - nKeepBest * nMutations 

	hardnessLog = []
	population = []
	
	#approximate term length upperbound
	# print("Approximating maximum terms in formula.",flush=True)
	# maxval = 0
	# for i in range(1000):
		# instance = gen.gen()
		# length = NumTerms(instance)
		# maxval = max(length,maxval)
	# maxTerms = maxval
	# print("Estimated max term value of: " + str(maxTerms),flush=True)


	#init pop
	for i in range(nPop):
		population.append(inst(gen.gen(),maxTime))
	##MAIN LOOP
	for generation in range(nGener):
		print("----------------------------------------------------",flush=True)
		print("Starting Generation #"+str(generation+1),flush=True)
		if generation != 0 and hardnessLog[-1] > 0.98:
			print("Achieved expected score",flush=True)
			break
	
		for i in range(nPop):
			population[i].Solve(gen.consts)
			print("\t("+str(i+1)+"/"+str(nPop)+")\t" + "Score = " +str(round(population[i].Score(),3)) + "\tTime = " + str(round(population[i].time,3)) + "\tIsSat = "+str(population[i].stdout),flush=True)
		population.sort()
		nextGen = []
		hardness = 0.0
		print("Testing Finished, analyzing and creating next generation.",flush=True)
		for i in range(nKeepBest):
			hardness += population[-1-i].Score()
			nextGen.append(population[-1-i])
			for i in range(nMutations):
				nextGen.append(inst(gen.mutate(population[-1-i].val),maxTime))
		while len(nextGen) < nPop:
			nextGen.append(inst(gen.gen(),maxTime))
		print(" Hardness = " + str( hardness/nKeepBest),flush=True)
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
		out.write(";  terms = " + str(population[-i-1].numTerms)+ "\n" )
		out.write(";  score = " + str(population[-i-1].Score())+ "\n" )
		out.write(";  stdout = " +population[-i-1].stdout+ "\n" )
		out.write(population[-i-1].ToString(gen.consts))
		out.close()

if __name__ == '__main__':
	main()
	print("Termination.",flush=True)