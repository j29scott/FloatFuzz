import sys
from random import seed,randrange
rng = randrange(sys.maxsize)
seed(rng)
print("Seed was:", rng)
