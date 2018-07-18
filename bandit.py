import sys
import os
from slap.mk import *
from slap.interface.solver import solve
from slap.interface.printer import smtlib_string
from gen import *
import time
import argparse
from inst import *
from RL2 import *
import numpy as np


epsilon = 0.20

def sampleReward():
	


def main():
	gen = mk_default_gen()
	ops = []
	T = []
	R = []
	
	for i in range(len(gen.ops)):
		ops.append(ops[i])
	for i in range(len(gen.boolean_ops)):
		ops.append(boolean_ops[i])
	for i in range(len(ops)):
		T.append([[1]])
		
	
	nIterations = 5000
	empiricalMeans = np.zeros(len(ops))
	N = np.ones(self.mdp.nActions)
	rewards = np.zeros(nIterations)
	for n in range(nIterations):
		if epsilonIsOneDividedByCurIter:
			epsilon = 1.0/(n+1)
	
		action = -1
		if np.random.rand(1)[0] < epsilon:
			action = np.random.randint(0,self.mdp.nActions)
		else:
			val = np.NINF
			for a in range(self.mdp.nActions):
				if empiricalMeans[a] > val:
					action , val = a, empiricalMeans[a]	
		[rewards[n] , next] = self.sampleRewardAndNextState(0,action)
		assert next == 0
		empiricalMeans[action] = (N[action] * empiricalMeans[action] + rewards[n]) / (N[action] + 1)
		N[action] += 1
		


if __name__ == '__main__':
	main()
	print("Termination.",flush=True)
