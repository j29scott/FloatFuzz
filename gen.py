from random import randint, random, choice
from slap.mk import *
from slap.theory.floatingpoint import *
import argparse


class operator:
	def __init__(self, operator, nargs, isrounded,isBoolean,weight=1,):
		self.operator = operator
		self.nargs = nargs
		self.isrounded = isrounded
		self.isBoolean = isBoolean
class Generator:
	def __init__(self, numConsts, ops, exponent,mantisa,roundMode,maxDepth):
		self.consts = []
		for i in range(numConsts):
			self.consts.append(mk_float("x"+str(i), exponent, mantisa))
		self.boolean_ops = []
	#	self.unary_ops = []
		self.ops = []
		self.roundMode = roundMode
		self.maxDepth = maxDepth
		for i in range(len(ops)):
	#		if ops[i].nargs == 1:
	#			self.unary_ops.append(ops[i])
			if ops[i].isBoolean:
				self.boolean_ops.append(ops[i])
			else:
				self.ops.append(ops[i])
				
	
	def gen(self,leafProb=0.25):
		return self.gen_core(0,leafProb)
		
	def gen_core(self,depth,leafProb):
		if depth != 0 and (random() < leafProb or depth >= self.maxDepth):
			return choice(self.consts)
		op = None
		if depth == 0:
			op = choice(self.boolean_ops)
		else:
			op = choice(self.ops)
		form = []
		if op.isrounded:
			form.append(self.roundMode)
		for i in range(op.nargs):
			form.append(self.gen_core(depth+1,leafProb))
		return op.operator(*form)
		
	def mutate(self,formula,mutateProb=0.10,leafProb=0.25):
		return self.mutate_core(formula,0,mutateProb,leafProb)
	
	def mutate_core(self,formula, depth,mutateProb,leafProb):
		if depth == self.maxDepth or  (random() < mutateProb and depth != 0):
			return self.gen_core(depth,leafProb)
		branch = choice(range(len(formula.args)))
		if random() < mutateProb or isinstance(formula.args[branch],FloatingPoint):
			if isinstance(formula.args,tuple):
				formula.args = list(formula.args)
			ret = self.gen_core(depth+1,leafProb)
			formula.args[branch] = ret
			return formula
		else:
			if isinstance(formula.args,tuple):
				formula.args = list(formula.args)
			formula[branch] = self.mutate_core(formula.args[branch],depth+1, mutateProb, leafProb)
			return formula
	
		
def NumTerms(inst,countRoundMode=False,depth=0):
	if isinstance(inst,slap.theory.floatingpoint.RoundingMode):
		if countRoundMode:
			return 1
		return 0
	if not hasattr(inst, 'args'):
		return 1
	if isinstance(inst,slap.theory.floatingpoint.FloatingPointFuncApp) or isinstance(inst,slap.theory.core.BoolFuncApp):
		ret = 1 #The operator
		for i in range(len(inst.args)):
			ret += NumTerms(inst.args[i])
		return ret
	assert False, "WTF"

		
	