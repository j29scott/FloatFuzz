#!/usr/bin/env python3

'''
The fuzzer tool that generates new problems.
'''

from slap.mk import *
from slap.interface.solver import solve
from slap.interface.printer import smtlib_string
from gen import *
import time



def main():
	
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
	# form = gen.gen()
	# ast = [mk_set_logic("QF_FP")]
	# ast.append(mk_assert(form))
	# ast.append(mk_check_sat())
	# ast.append(mk_get_model())
	# res = solve(ast,gen.consts)

	# print(res['time'])
	# print(res['model'])
	# print(res['stdout'])
	
	# ast2 = [mk_set_logic("QF_FP")]
	# ast2.append(mk_assert(gen.mutate(form)))
	# ast2.append(mk_check_sat())
	# ast2.append(mk_get_model())
	# res = solve(ast2,gen.consts)
	# print(res['time'])
	# print(res['model'])
	# print(res['stdout'])

	
	log = open("data/run"+str(time.time())+".txt","w")
	
	nGener = 1000
	nPop = 50
	nKeepBest = 10
	nMutations = 2
	nRandom = nPop - nKeepBest - nKeepBest * nMutations 
	
	hardnessLog = []
	population = []
	for i in range(nPop):
		population.append(gen.gen())
	generation = 1
	for generation in range(nGener):
		times = []
		for i in range(nPop):
			ast = [mk_set_logic("QF_FP")]
			ast.append(mk_assert(population[i]))
			ast.append(mk_check_sat())
			res = solve(ast,gen.consts)
			print(res['time'])
			times.append([res['time'],population[i]])
			if res['time'] > 300:
				out = open("data/hard/"+str(time.time())+".smt2","w")
				out.write(";  time = " + str(res['time']) + "\n" )
				out.write(str(smtlib_string(ast,gen.consts)))
				out.close()
		times.sort(key=lambda pair:pair[0])
		nextGen = []
		hardness = 0.0
		for i in range(nKeepBest):
			hardness += times[-1-i][0]
			nextGen.append(times[-1-i][1])
			for i in range(nMutations):
				nextGen.append(gen.mutate(times[-1-i][1]))
		while len(nextGen) < nPop:
			nextGen.append(gen.gen())
		print(generation," Hardness", hardness)
		hardnessLog.append(hardness)
		population = nextGen
		print("gen#"+str(generation) + ": " + str(hardness))
		log.write(str(hardness)+"\n")
		log.flush()

if __name__ == '__main__':
	main()