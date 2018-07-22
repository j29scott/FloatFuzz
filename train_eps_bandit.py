from mutater import *
from gen import *
from random import seed,randrange,Random
import sys
import pickle
import json
from Fuzz import *
rng = randrange(sys.maxsize)
seed(rng)
print("Seed was:", rng)
Settings.PythonRandomSeed = rng
N = Settings.BanditNumberTrainingIterations
i=0
#seed(6446321609587222541)
while True:
	print("Fuzzer Iteration " + str(i) + " of " + str(N))
	fuzzer = Fuzzer(EpsilonBandit)
	if fuzzer.mutater.nIter >= N:
		break
	fuzzer.Fuzz()
	i+= 1
