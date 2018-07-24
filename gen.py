from random import randint, random, choice
from slap.mk import *
from slap.theory.floatingpoint import *
import argparse
from inst import *
from copy import copy,deepcopy
import Settings as settings
import Settings

class operator:
	def __init__(self, operator, nargs, isRounded,isBoolean,weight=1,name = ""):
		self.operator = operator
		self.nargs = nargs
		self.isRounded = isRounded
		self.isBoolean = isBoolean
		self.weight = weight
		self.name = name
		
class Generator:
	def __init__(self,  ops,exponent,mantisa,roundMode=mk_fp_rne()):
		self.consts = []
		for i in range(Settings.GeneratorNumConst):
			self.consts.append(mk_float("x"+str(i), exponent, mantisa))
		self.boolean_ops = []
		self.ops = []
		self.roundMode = roundMode
		self.maxDepth = Settings.GeneratorMaxDepth
		for i in range(len(ops)):
			if ops[i].isBoolean:
				self.boolean_ops.append(ops[i])
			else:
				self.ops.append(ops[i])
		ops.append(operator(None,0,False,False,weight = Settings.GeneratorConstWeight ,name = "const"))
				
	def gen(self,depth=0):
		return inst(self.gen_list(depth),self.consts)
	
	def BooleanOps(self):
		return self.boolean_ops
	def FloatOps(self):
		ret = []
		for i in range(len(self.ops)):
			if not self.ops[i].isBoolean and self.ops[i].name != "const":
				ret.append(self.ops[i])
		return ret
	
	def gen_ast(self,depth=0):
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
		
	def gen_list(self,depth=0):
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
			ret.append(self.gen_list(depth+1))
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

	# def replace(self,instance,op):
		# return self.replace_list(instance,op)
	# def replace_list(self,instance,op):
		# if op.isBoolean:
			# ret = deepcopy(instance)
			# ret.val[0] = op
			# while len(ret.val) < ret.val[0].nargs + 1:
				# ret.val.append(self.gen_list(1))
			# while len(ret.val) > ret.val[0].nargs + 1:
				# ret.val.pop()
			# ret.val[0] = op
			# return ret
		# if op.name == "const":
			# N = instance.NumConsts()
			# indx = randint(0,N-1)
			# ret = deepcopy(instance)
			# ret.val = self.replace_list_const(ret.val,indx)
			# return ret
		# else: #op is nonboolean fp op
			# N = instance.NumFloatOps()
			# indx = randint(0,N-1)
			# ret = deepcopy(instance)
			# [ret.val,indx,finished] = self.replace_list_fpop(ret.val,indx,op,0,0)
			# assert finished
			# #ret.val = Generator(self,ret.val,indx,op,0,0)
			# return ret
			
			
	# def replace_list_const(self,ast_list,n,const,indx=0):
		# #single float
		# if len(ast_list) == 1:
			# if indx == n:
				# return [[const],indx+1,True]
			# else:
				# return [ast_list,indx+1,False]
		# else:
			# op = ast_list[0]
			# start = 1
			# if op.isRounded:
				# start = 2
			# for i in range(start,len(ast_list)):
				# [ast_list[i], indx, done] = self.replace_list_const(ast_list,n,const,indx)
				# if done:
					# break
			# return [ast_list,indx,done]
		
	# def replace_list_fpop(self,ast_list,n,oper,indx=0,depth=0):
		# #single float
		# #print(ast_list,n,indx,depth)
		# if len(ast_list) == 1:
			# return [ast_list,indx,False]
		# else:
			# op = ast_list[0]
			# if not op.isBoolean:
				# if indx == n:
					# retForm = []
					# retForm.append(oper)
					# if oper.isRounded:
						# retForm.append(self.roundMode)
					# start = 1
					# if op.isRounded:
						# start = 2	
					# oper_indx = 0
					# for i in range(oper.nargs):
						# if oper_indx < op.nargs:
							# retForm.append(ast_list[start])
							# start += 1
							# oper_indx += 1
						# else:
							# retForm.append(self.gen_list(depth))
					# return [retForm,indx,True]
				# else:
					# indx +=1
			# start = 1
			# if op.isRounded:
				# start = 2
			# for i in range(start,len(ast_list)):
				# [ast_list[i], indx, done] = self.replace_list_fpop(ast_list[i],n,oper,indx,depth+1)
				# if done:
					# break
			# return [ast_list,indx,done]

def mk_gen(numConsts = Settings.GeneratorNumConst ,width = Settings.FloatWidth, maxDepth = Settings.GeneratorMaxDepth):
	ne = 0
	ns = 0
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
	
	if Settings.OperatorAbs:
		ops.append(operator(mk_fp_abs,				nargs=1,isRounded=False,isBoolean=False	,name="abs"))
	if Settings.OperatorNeg:
		ops.append(operator(mk_fp_neg,				nargs=1,isRounded=False,isBoolean=False	,name="neg"))
	if Settings.OperatorAdd:
		ops.append(operator(mk_fp_add,				nargs=2,isRounded=True,	isBoolean=False	,name="add"))
	if Settings.OperatorSub:
		ops.append(operator(mk_fp_sub,				nargs=2,isRounded=True,	isBoolean=False	,name="sub"))
	if Settings.OperatorMul:
		ops.append(operator(mk_fp_mul,				nargs=2,isRounded=True,	isBoolean=False	,name="mul"))
	if Settings.OperatorDiv:
		ops.append(operator(mk_fp_div,				nargs=2,isRounded=True,	isBoolean=False	,name="div"))
	if Settings.OperatorFMA:
		ops.append(operator(mk_fp_fma,				nargs=3,isRounded=True,	isBoolean=False	,name="fma"))
	if Settings.OperatorRem:
		ops.append(operator(mk_fp_rem,				nargs=2,isRounded=False,isBoolean=False	,name="rem"))
	if Settings.OperatorR2I:
		ops.append(operator(mk_fp_roundToIntegral,	nargs=1,isRounded=True,	isBoolean=False	,name="roundToIntegral"))
	if Settings.OperatorSqrt:
		ops.append(operator(mk_fp_sqrt,				nargs=1,isRounded=True,	isBoolean=False	,name="sqrt"))
	if Settings.OperatorMin:
		ops.append(operator(mk_fp_min,				nargs=2,isRounded=False,isBoolean=False	,name="min"))
	if Settings.OperatorMax:
		ops.append(operator(mk_fp_max,				nargs=2,isRounded=False,isBoolean=False	,name="max"))
	if Settings.OperatorLeq:
		ops.append(operator(mk_fp_leq,				nargs=2,isRounded=False,isBoolean=True	,name="leq"))
	if Settings.OperatorLt:
		ops.append(operator(mk_fp_lt,				nargs=2,isRounded=False,isBoolean=True	,name="lt"))
	if Settings.OperatorGeq:
		ops.append(operator(mk_fp_geq,				nargs=2,isRounded=False,isBoolean=True	,name="geq"))
	if Settings.OperatorGt:
		ops.append(operator(mk_fp_gt,				nargs=2,isRounded=False,isBoolean=True	,name="gt"))
	if Settings.OperatorEq:
		ops.append(operator(mk_fp_eq,				nargs=2,isRounded=False,isBoolean=True	,name="eq"))
	if Settings.OperatorIsNorm:
		ops.append(operator(mk_fp_isNormal,			nargs=1,isRounded=False,isBoolean=True	,name="isNormal"))
	if Settings.OperatorIsSub:
		ops.append(operator(mk_fp_isSubnormal,		nargs=1,isRounded=False,isBoolean=True	,name="isSubnormal"))
	if Settings.OperatorIsZero:
		ops.append(operator(mk_fp_isZero,			nargs=1,isRounded=False,isBoolean=True	,name="isZero"))
	if Settings.OperatorIsNan:
		ops.append(operator(mk_fp_isNan,			nargs=1,isRounded=False,isBoolean=True	,name="isNan"))
	if Settings.OperatorIsNeg:
		ops.append(operator(mk_fp_isNegative,		nargs=1,isRounded=False,isBoolean=True	,name="isNegative"))
	if Settings.OperatorIsPos:
		ops.append(operator(mk_fp_isPositive,		nargs=1,isRounded=False,isBoolean=True	,name="isPositive"))

	return Generator(ops=ops,exponent=ne,mantisa=ns)
