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
		
# def genRandInstance(consts, unaryOps, binaryOps, ternaryOps, booleanOps,depth,MaxDepth, leafProbability=0.5, unaryProb=0.5, ternaryProb = 0.1):
	
	# if depth >= MaxDepth:
		# if len(unaryOps) != 0 and random() < unaryProb:
			# return OPS[choice(unaryOps)]([choice(consts)])
		# else:
			# return choice(consts)
	
	
	# lhs = None
	# rhs = None
	# if random() < leafProbability:
		# if len(unaryOps) != 0 and random() < unaryProb:
			# lhs = OPS[choice(unaryOps)]([choice(consts)])
		# else:
			# lhs = choice(consts)
	# else:
		# lhs = genRandInstance(consts, unaryOps, binaryOps, ternaryOps, booleanOps,depth+1,MaxDepth)

	# if random() < leafProbability:
		# if len(unaryOps) != 0 and random() < unaryProb:
			# rhs = OPS[choice(unaryOps)]([choice(consts)])
		# else:
			# rhs = choice(consts)
	# else:
		# rhs = genRandInstance(consts, unaryOps, binaryOps, ternaryOps, booleanOps,depth+1,MaxDepth)
	# if depth == 0:
		# return OPS[choice(booleanOps)]([lhs,rhs])
	# else:
		# if random() < ternaryProb and len(ternaryOps) != 0:
			# third = None
			# if random() < leafProbability:
				# if len(unaryOps) != 0 and random() < unaryProb:
					# third = OPS[choice(unaryOps)]([choice(consts)])
				# else:
					# third = choice(consts)
			# else:
				# third = genRandInstance(consts, unaryOps, binaryOps, ternaryOps, booleanOps,depth+1,MaxDepth)
			# return OPS[choice(binaryOps)]([lhs,rhs,third])
		# else:
			# return OPS[choice(binaryOps)]([lhs,rhs])

def mutate(inst,consts, unaryOps, binaryOps, ternaryOps, booleanOps,depth,MaxDepth, mutateProb=0.33, leafProbability=0.5, unaryProb=0.5, ternaryProb = 0.1):
	if depth == MaxDepth:
		return genRandInstance(consts,unaryOps,binaryOps,ternaryOps,depth,MaxDepth,leafProbability,unaryProb,ternaryProb)
	branch = choice(range(len(inst.args)))
	if random() < mutateProb or isinstance(inst.args[branch],Int):
		inst.args[branch] = genRandInstance(consts,unaryOps,binaryOps,ternaryOps,depth+1,MaxDepth,leafProbability,unaryProb,ternaryProb)
		return inst
	else:
		inst[branch] = mutate(inst.args[branch],consts, unaryOps, binaryOps, ternaryOps, booleanOps,depth+1,MaxDepth, mutateProb, leafProbability, unaryProb, ternaryProb )
		return inst