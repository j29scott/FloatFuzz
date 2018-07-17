from random import randint, random, choice
from slap.mk import *
from slap.theory.floatingpoint import *
import argparse

def NumTerms(inst,countRoundMode=False,depth=0):
	if isinstance(inst,slap.theory.floatingpoint.RoundingMode):
		if countRoundMode:
			return 1
		return 0
	if not hasattr(inst, 'args'):
		return 1
	if isinstance(inst,slap.theory.floatingpoint.FloatingPointFuncApp):
		ret = 1 #The operator
		for i in range(len(inst.args)):
			ret += NumTerms(inst.args[i])
		return ret
	assert False, "WTF"

	
	
x = mk_float("x",2,3)
y = mk_float("y",2,3)
rne = mk_fp_rne()
form = mk_fp_add(rne,x,y)
print(NumTerms(form))
form = mk_fp_add(rne,form,form)
print(NumTerms(form))

#(+ (+ x y ) (+ x y))