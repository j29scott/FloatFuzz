from mutater import *
from gen import *
from random import seed,randrange,Random
import sys
import pickle
import json
import Settings
from Fuzz import *
rng = randrange(sys.maxsize)
seed(rng)
print("Seed was:", rng)
Settings.PythonRandomSeed = rng


fuzzer = Fuzzer(RandomMutater,"")
fuzzer.Fuzz()
