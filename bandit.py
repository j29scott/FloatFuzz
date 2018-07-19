import sys
import os
from slap.mk import *
from slap.interface.solver import solve
from slap.interface.printer import smtlib_string
from gen import *
import time
import argparse
from inst2 import *
from RL2 import *
import numpy as np
from random import randint, random, choice


epsilon = 0.20
gen = mk_default_gen()


def IsReplaceable(oper1,oper2):
	if oper1.name == "const" and oper2.name == "const":
		return True
	if oper1.name != "const" and oper2.name != "const" and (oper1.isRounded == oper2.isRounded) and (oper1.nargs == oper2.nargs) and (oper1.isBoolean == oper2.isBoolean):
		return True
	return False

def Replacer(form,oper,pos,indx=0):
	assert len(form) > 0
	#single float
	if len(form) == 1:
		if IsReplaceable(form[0],oper):
			if pos == indx:
				return [oper,indx+1]
			else:
				return [form[0],indx+1]
		else:
			return [form[0],indx]
	else:
		ret = [None,None]
		retList = []
		if IsReplaceable(form[0],oper):
			indx += 1
			if pos == indx:
				retList.append(oper)
			else:
				retList.append(form[0])
		else:
			retList.append(form[0])
		start = 1
		if form[0].isRounded:
			start = 2
			retList.append(mk_fp_rne())
		
		for i in range(start,len(form)):
			[child,indx] = Replacer(form[i],oper,pos,indx)
			retList.append(child)
		return [retList,indx]


def NumReplaceable(form,op):
	assert len(form) > 0
	#single float
	if len(form) == 1:
		if IsReplaceable(form[0],op):
			return 1
		else:
			return 0
	else:
		print(form)
		ret = 0
		if IsReplaceable(form[0],op):
			ret = 1
		start = 1
		if form[0].isRounded:
			start = 2
		
		for i in range(start,len(form)):
			ret += NumTerms(form[i])
		return ret

def sampleReward(op):
	x = gen.gen()
	n = NumReplaceable(x,op)
	while n == 0:
		x = gen.gen()
		n = NumReplaceable(x,op)
	indx = randint(0,n-1)
	ins1 = inst(x)
	ins2 = inst(Replacer(x,op,indx))
	ins1.Solve()
	ins2.Solve()
	return ins2.time - ins1.time

def main():
	gen = mk_default_gen()
	ops = []
	T = []
	R = []
	epsilonIsOneDividedByCurIter = False
	epsilon = 0.20
	for i in range(len(gen.ops)):
		ops.append(gen.ops[i])
	for i in range(len(gen.boolean_ops)):
		ops.append(gen.boolean_ops[i])
	
	
	nActions = len(ops)
	
	nIterations = 5000
	empiricalMeans = np.zeros(len(ops))
	N = np.ones(nActions)
	rewards = np.zeros(nIterations)
	for n in range(nIterations):
		if epsilonIsOneDividedByCurIter:
			epsilon = 1.0/(n+1)
	
		action = -1
		if np.random.rand(1)[0] < epsilon:
			action = np.random.randint(0,nActions)
		else:
			val = np.NINF
			for a in range(nActions):
				if empiricalMeans[a] > val:
					action , val = a, empiricalMeans[a]	
		[rewards[n] , next] = sampleReward(ops[action])
		assert next == 0
		empiricalMeans[action] = (N[action] * empiricalMeans[action] + rewards[n]) / (N[action] + 1)
		N[action] += 1
		


if __name__ == '__main__':
	main()
	print("Termination.",flush=True)
