from mutater import *
from gen import *
from Solver import Z3Solver,XSatSolver,Colibri,MathSat
from random import seed,randrange,Random
import sys
import pickle
import json
from Fuzz import *
rng = randrange(sys.maxsize)
seed(rng)
print("Seed was:", rng)
Settings.PythonRandomSeed = rng

fuzzer = Fuzzer([Z3Solver,MathSat],ThompsonBandit,modelName="")
fuzzer.Fuzz()
