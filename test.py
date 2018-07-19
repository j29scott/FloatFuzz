from random import randint, random, choice,seed
from slap.mk import *
from slap.theory.floatingpoint import *
import argparse
import random
from gen import *
from inst2 import *

#seed(0)
gen = mk_default_gen()
x = inst(gen.gen(),600)
print (x.val)
print (x.ConvertList())
print (x.NumTerms())
