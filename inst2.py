import sys
import os
from slap.mk import *
from slap.interface.solver import solve
from slap.interface.printer import smtlib_string
from gen import *
import numpy as np

nonNanTerms = True
nonInfTerms = True
nonZeroTerms = True
nonSubNormalTerms = False


class inst:
	def __init__(self, val ,maxTime=600,maxTerms = 100):
		self.val = val
		self.solved = False
		self.time = -1
		self.numTerms = NumTerms(val)
		self.maxTerms = maxTerms
		self.maxTime = maxTime
	def Solve(self,consts,saveIfHard=True,outFilePath="tmpdata/hard/"):
		if self.solved:
			return
		ast = self.ToAST(consts)
		self.solved = True
		res = solve(ast,consts)
		self.time = min(res['time'],self.maxTime)
		self.stdout = res['stdout']
		if self.stdout.find("error") != -1:
			print (self.stdout)
			print (self.ToString(consts))
			sys.exit(1)
		if self.time >= self.maxTime * 0.90:
			out = open(outFilePath+str(time.time())+".smt2","w")
			
			out.write(";  time  = "  + str(self.time) 		+ "\n" )
			out.write(";  terms = "  + str(self.numTerms) 	+ "\n" )
			out.write(";  score = "  + str(self.Score())	+ "\n")
			out.write(";  stdout= "  + self.stdout  		+ "\n")
			out.write(self.ToString(consts))
			out.close()
		return
	def Score(self):
		#return (self.time/self.maxTime) * max((self.maxTerms - self.numTerms)/self.maxTerms,0.0)
		return (self.time/self.maxTime)
	def ToString(self,consts):
		ast = self.ToAST(consts)
		return str(smtlib_string(ast,consts))
	def ToAST(self,consts):
		ast = [mk_set_logic("QF_FP")]
		for i in range(len(consts)):
			if nonNanTerms:
				ast.append(mk_assert(mk_not(mk_fp_isNan(consts[i]))))
			if nonInfTerms:
				ast.append(mk_assert(mk_not(mk_fp_isInfinite(consts[i]))))
			if nonZeroTerms:
				ast.append(mk_assert(mk_not(mk_fp_isZero(consts[i]))))
			if nonSubNormalTerms:
				ast.append(mk_assert(mk_not(mk_fp_isSubnormal(consts[i]))))
					
		ast.append(mk_assert(self.ConvertList()))
		ast.append(mk_check_sat())
		return ast
	def ConvertList(self,form = None):
		if form == None:
			form = self.val
		assert len(form) > 0
		#single float
		if len(form) == 1:
			return form[0]
		else:
			op = form[0]
			args = []
			start = 1
			if op.isRounded:
				args.append(mk_fp_rne())
				start = 2
			for i in range(start,len(form)):
				args.append(self.ConvertList(form[i]))
			return op.operator(*args)
	def NumTerms(self,form = None, countRound = False):
		if form == None:
			form = self.val
		assert len(form) > 0
		#single float
		if len(form) == 1:
			return 1
		else:
			op = form[0]
			ret = 1
			args = []
			start = 1
			if op.isRounded:
				args.append(mk_fp_rne())
				start = 2
				if countRound:
					ret += 1
			
			for i in range(start,len(form)):
				ret += self.NumTerms(form[i])
			return ret
		
	def __lt__(self, other):
		return self.Score() < other.Score()