from mutater import *
from gen import *
from random import seed,randrange,Random
from Solver import Z3Solver,XSatSolver,Colibri,MathSat
import sys
import pickle
import json
import Settings
from Fuzz import *
rng = randrange(sys.maxsize)
seed(rng)
print("Seed was:", rng)
Settings.PythonRandomSeed = rng

fuzzer = Fuzzer([MathSat()],EpsilonBandit,modelName="")
fuzzer.Fuzz()
