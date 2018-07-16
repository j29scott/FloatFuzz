#!/usr/bin/env python3

'''
An Example simple problem generator
'''

import sys
import os
import time


from slap.theory.reals_ints import *
#from slap.theory.floatingpoint import *
from slap.theory.core import *

from slap.interface.slap import *

from slap.interface.solver.z3 import *
from slap.interface.solver.context import *
from slap.interface.solver.concrete import *
from random import randint, random, choice


import z3


def genRandInstance(consts, unaryOps, binaryOps, ternaryOps, booleanOps,depth,MaxDepth, leafProbability=0.5, unaryProb=0.5, ternaryProb = 0.1):
	
	if depth >= MaxDepth:
		if len(unaryOps) != 0 and random() < unaryProb:
			return OPS[choice(unaryOps)]([choice(consts)])
		else:
			return choice(consts)
	
	
	lhs = None
	rhs = None
	if random() < leafProbability:
		if len(unaryOps) != 0 and random() < unaryProb:
			lhs = OPS[choice(unaryOps)]([choice(consts)])
		else:
			lhs = choice(consts)
	else:
		lhs = genRandInstance(consts, unaryOps, binaryOps, ternaryOps, booleanOps,depth+1,MaxDepth)

	if random() < leafProbability:
		if len(unaryOps) != 0 and random() < unaryProb:
			rhs = OPS[choice(unaryOps)]([choice(consts)])
		else:
			rhs = choice(consts)
	else:
		rhs = genRandInstance(consts, unaryOps, binaryOps, ternaryOps, booleanOps,depth+1,MaxDepth)
	if depth == 0:
		return OPS[choice(booleanOps)]([lhs,rhs])
	else:
		if random() < ternaryProb and len(ternaryOps) != 0:
			third = None
			if random() < leafProbability:
				if len(unaryOps) != 0 and random() < unaryProb:
					third = OPS[choice(unaryOps)]([choice(consts)])
				else:
					third = choice(consts)
			else:
				third = genRandInstance(consts, unaryOps, binaryOps, ternaryOps, booleanOps,depth+1,MaxDepth)
			return OPS[choice(binaryOps)]([lhs,rhs,third])
		else:
			return OPS[choice(binaryOps)]([lhs,rhs])

def mutate(inst,consts, unaryOps, binaryOps, ternaryOps, booleanOps,depth,MaxDepth, mutateProb=0.10, leafProbability=0.5, unaryProb=0.5, ternaryProb = 0.1):
	if depth == MaxDepth:
		return genRandInstance(consts,unaryOps,binaryOps,ternaryOps,depth,MaxDepth,leafProbability,unaryProb,ternaryProb)
	branch = choice(range(len(inst.args)))
	if random() < mutateProb or isinstance(inst.args[branch],Int):
		inst.args[branch] = genRandInstance(consts,unaryOps,binaryOps,ternaryOps,depth+1,MaxDepth,leafProbability,unaryProb,ternaryProb)
		return inst
	else:
		inst[branch] = mutate(inst.args[branch],consts, unaryOps, binaryOps, ternaryOps, booleanOps,depth+1,MaxDepth, mutateProb, leafProbability, unaryProb, ternaryProb )
		return inst

def main():
	num_consts = randint(1,20)
	consts = [Int("x"+str(i)) for i in range(num_consts)]
	unaryOps = []
	binaryOps = ["+","-","*"]
	ternaryOps = []
	booleanOps = ["<=",">=","<",">"]

	nPop = 20
	nKeepBest = 5
	nMutations = 2
	nRandom = nPop - nKeepBest - nKeepBest * nMutations 

	hardnessLog = []
	population = []
	for i in range(nPop):
		population.append(genRandInstance(consts,unaryOps,binaryOps,ternaryOps,booleanOps,0,10))
	generation = 1
	while True:
		times = []
		for i in range(nPop):

			ctx = Z3Context()
			ctx.s_assert(population[i])
			start = time.time()
			res = ctx.s_check()
			end = time.time()
			times.append([end-start,population[i]])
			print("\tTesting: "+str(i/nPop * 100.0)+"% ("+str(end-start) + ")")
		times.sort(key=lambda pair:pair[0])
		nextGen = []
		hardness = 0.0
		for i in range(nKeepBest):
			hardness += times[-1-i][0]
			nextGen.append(times[-1-i][1])
			print("\tGenerating: "+str(len(nextGen)/nPop * 100.0)+"%")
			for i in range(nMutations):
				nextGen.append(mutate(times[-1-i][1],consts, unaryOps, binaryOps, ternaryOps, booleanOps,0,10))
				print("\tGenerating: "+str(len(nextGen)/nPop * 100.0)+"%")
		while len(nextGen) < nPop:
			nextGen.append(genRandInstance(consts,unaryOps,binaryOps,ternaryOps,booleanOps,0,10))
			print("\tGenerating: "+str(len(nextGen)/nPop * 100.0)+"%")
		print(generation," Hardness", hardness)
		hardnessLog.append(hardness)
		generation += 1
		population = nextGen
		print(hardnessLog)
	#	input("Press Enter to continue...")
		
	while True:
		inst = genRandInstance(consts,unaryOps,binaryOps,ternaryOps,booleanOps,0,5)
		print("Random Inst = ", inst)
		mut = mutate(inst,consts, unaryOps, binaryOps, ternaryOps, booleanOps,0,5)
		print("Mutated Inst= ", mut)
		input("Press Enter to continue...")
	
	e = choice(consts)

	for i in range(randint(1,10)):
		decision = random()
		if decision < 0.25:
			# e = OPS["fp.add"]([mode, e, choice(consts)])
			e = OPS["+"]([e,choice(consts)])
		elif decision < 0.5:
			e = e - choice(consts)
		elif decision < 0.75:
			e = e * choice(consts)
		else:
			e = choice(consts) + choice(consts)

	decision = random()
	if decision < 0.5:
		e = e < choice(consts)
	else:
		e = e == choice(consts)

	d = {c.name: c for c in consts}
	printer = Printer("QF_LIA", d, [e], True, True)
	printer.print("out.txt")

	assignment = {c.name: randint(-100, 100) for c in consts}

	print("\n\nASSIGNMENT:", assignment)

	ctx = ConcreteContext(assignment)

	print(e.cval(ctx))

	ctx = Z3Context()

	ctx.s_assert(e)
	res = ctx.s_check()
	print("CHECK!", res)
	if res == z3.sat:
		m = ctx.s_model()
		print("Model!", m)
		ctx = ConcreteContext(m)
		print(e.cval(ctx))

if __name__ == '__main__':
	main()
