from random import randint, random, choice
from slap.mk import *
from slap.theory.floatingpoint import *
import argparse

# def select_weighted(arr):
	# weights = []
	# sum = 0
	# for i in range(len(arr)):
		# weights.append(arr[i].weight)
		# assert weights[-1] > 0 and isinstance(weights[-1],int)
		# sum += weights[-1]
	# rand = random.uniform(0, total)
	# limit = 0
	# while True:
		# limit -= rand
		# if limit == 0


class operator:
	def __init__(self, operator, nargs, isRounded,isBoolean,weight=1,name = ""):
		self.operator = operator
		self.nargs = nargs
		self.isRounded = isRounded
		self.isBoolean = isBoolean
		self.weight = weight
		self.name = name
		
class Generator:
	def __init__(self, numConsts, ops, exponent,mantisa,roundMode,maxDepth,const_weight = 1):
		self.consts = []
		for i in range(numConsts):
			self.consts.append(mk_float("x"+str(i), exponent, mantisa))
		self.boolean_ops = []
		self.ops = []
		self.roundMode = roundMode
		self.maxDepth = maxDepth
		self.const_weight = const_weight
		for i in range(len(ops)):
			if ops[i].isBoolean:
				self.boolean_ops.append(ops[i])
			else:
				self.ops.append(ops[i])
		ops.append(operator(None,0,False,False,weight = const_weight,name = "const"))
				
	def gen(self):
		return self.gen_core()
		
	def gen_core(self,depth=0):
		if depth == self.maxDepth:
			return choice(self.consts)
		op = None
		if depth == 0:
			op = choice(self.boolean_ops)
		else:
			op = choice(self.ops)
		if op.name == "const":
			return choice(self.consts) 
		args = []
		if op.isRounded:
			args.append(self.roundMode)
		for i in range(op.nargs):
			args.append(self.gen_core(depth+1))
		return op.operator(*args)
		
	def gen_core_new(self,depth=0):
		if depth == self.maxDepth:
			return [choice(self.consts)]
		op = None
		if depth == 0:
			op = choice(self.boolean_ops)
		else:
			op = choice(self.ops)
		if op.name == "const":
			return [choice(self.consts)] 
		ret = [op]
		if op.isRounded:
			ret.append(self.roundMode)
		for i in range(op.nargs):
			ret.append(self.gen_core_new(depth+1))
		return ret
	def gen_fixed_terms(self,nTerms,boolean=True):
		op = None
		args = []
		if boolean:
			assert nTerms > 1, "Not enough terms."
			op = choice(self.boolean_ops)
		else:
			assert nTerms > 0
			if nTerms == 1:
				return choice(self.consts)
			else:
				valid_ops = []
				for i in range(len(self.ops)):
					if self.ops[i].nargs <= nTerms-1:
						valid_ops.append(self.ops[i])
				op = choice(valid_ops)
		nTerms -= 1
		argTerms = []
		if op.isRounded:
			args.append(self.roundMode)
		for i in range(op.nargs):
			argTerms.append(1)
			nTerms -= 1
		while nTerms > 0:
			argTerms[randint(0,op.nargs-1)] += 1
			nTerms -= 1
		for i in range(op.nargs):
			args.append(self.gen_fixed_terms(argTerms[i],False))
		return op.operator(*args)
			
	def mutate(self,formula,mutateProb=0.10):
		return self.mutate_core(formula,0,mutateProb)
	
	def mutate_core(self,formula, depth,mutateProb):
		if depth == self.maxDepth or  (random() < mutateProb and depth != 0):
			return self.gen_core(depth)
		branch = choice(range(len(formula.args)))
		if random() < mutateProb or isinstance(formula.args[branch],FloatingPoint):
			if isinstance(formula.args,tuple):
				formula.args = list(formula.args)
			ret = self.gen_core(depth+1)
			formula.args[branch] = ret
			return formula
		else:
			if isinstance(formula.args,tuple):
				formula.args = list(formula.args)
			formula[branch] = self.mutate_core(formula.args[branch],depth+1, mutateProb, leafProb)
			return formula
			
	def mutate_core_new(self,formula, depth,mutateProb):
		return NotImplementedError
	
		
def NumTerms(inst,countRoundMode=False,depth=10):
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

def mk_default_gen(numConsts = 4,width = 32, maxDepth = 4):

	ne = 0
	ns=0
	if width == 5:
		ne = 2
		ns = 3
	elif width == 32:
		ne = 8 
		ns = 24
	elif width == 64:
		ne = 11
		ns = 53
	elif width == 128:
		ne = 15
		ns = 113
	elif width == 256:
		ne = 19
		ns = 237
	else:
		ne = round(0.33 * width)
		ns = width - ne


	rne = mk_fp_rne()
	ops = []
	ops.append(operator(mk_fp_abs,				nargs=1,isRounded=False,isBoolean=False	,name="abs"))
	ops.append(operator(mk_fp_neg,				nargs=1,isRounded=False,isBoolean=False	,name="neg"))
	ops.append(operator(mk_fp_add,				nargs=2,isRounded=True,	isBoolean=False	,name="add"))
	ops.append(operator(mk_fp_sub,				nargs=2,isRounded=True,	isBoolean=False	,name="sub"))
	ops.append(operator(mk_fp_mul,				nargs=2,isRounded=True,	isBoolean=False	,name="mul"))
	ops.append(operator(mk_fp_div,				nargs=2,isRounded=True,	isBoolean=False	,name="div"))
	ops.append(operator(mk_fp_fma,				nargs=3,isRounded=True,	isBoolean=False	,name="fma"))
	ops.append(operator(mk_fp_rem,				nargs=2,isRounded=False,isBoolean=False	,name="rem"))
	ops.append(operator(mk_fp_roundToIntegral,	nargs=1,isRounded=True,	isBoolean=False	,name="roundToIntegral"))
	ops.append(operator(mk_fp_sqrt,				nargs=1,isRounded=True,	isBoolean=False	,name="sqrt"))
	ops.append(operator(mk_fp_min,				nargs=2,isRounded=False,isBoolean=False	,name="min"))
	ops.append(operator(mk_fp_max,				nargs=2,isRounded=False,isBoolean=False	,name="max"))
	ops.append(operator(mk_fp_leq,				nargs=2,isRounded=False,isBoolean=True	,name="leq"))
	ops.append(operator(mk_fp_lt,				nargs=2,isRounded=False,isBoolean=True	,name="lt"))
	ops.append(operator(mk_fp_geq,				nargs=2,isRounded=False,isBoolean=True	,name="geq"))
	ops.append(operator(mk_fp_gt,				nargs=2,isRounded=False,isBoolean=True	,name="gt"))
	ops.append(operator(mk_fp_eq,				nargs=2,isRounded=False,isBoolean=True	,name="eq"))
	ops.append(operator(mk_fp_isNormal,			nargs=1,isRounded=False,isBoolean=True	,name="isNormal"))
	ops.append(operator(mk_fp_isSubnormal,		nargs=1,isRounded=False,isBoolean=True	,name="isSubnormal"))
	ops.append(operator(mk_fp_isZero,			nargs=1,isRounded=False,isBoolean=True	,name="isZero"))
	ops.append(operator(mk_fp_isNan,			nargs=1,isRounded=False,isBoolean=True	,name="isNan"))
	ops.append(operator(mk_fp_isNegative,		nargs=1,isRounded=False,isBoolean=True	,name="isNegative"))
	ops.append(operator(mk_fp_isPositive,		nargs=1,isRounded=False,isBoolean=True	,name="isPositive"))

	return Generator(numConsts=numConsts,ops=ops,exponent=ne,mantisa=ns,roundMode=rne,maxDepth=maxDepth)
