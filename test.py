from random import randint, random, choice,seed
from slap.mk import *
from slap.theory.floatingpoint import *
import argparse
import random
from gen import *

#seed(0)
gen = mk_default_gen()
print(gen.gen_fixed_terms(nTerms=5))