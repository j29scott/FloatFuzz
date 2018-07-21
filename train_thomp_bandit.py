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



#seed(6446321609587222541)
for i in range(1000):
	fuzzer = Fuzzer(ThompsonBandit)
	fuzzer.Fuzz()
