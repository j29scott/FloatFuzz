import sys
import os
import copy
from slap.mk import *
from slap.interface.solver import solve
from slap.interface.printer import smtlib_string
import numpy as np
import time
import Settings
import Consts



class inst:
	def __init__(self, val, consts):
		self.val = copy.deepcopy(val)
		self.times = {}
		self.stdout = {}
		self.numTerms = self.NumTerms(val)
		self.name = str(time.time()) + str(Settings.PythonRandomSeed)
		self.consts = consts
		
		self.extra_consts  = "(set-logic QF_FP)\n"
		self.extra_asserts = ""
		if Settings.ConstRestrictRange_m1_p1:
			self.extra_consts += Consts.def_fp32_pone + "\n" + Consts.def_fp32_none + "\n"
			for i in range(len(consts)):
				self.extra_asserts += "(assert (fp.lt " + consts[i].name + " " + Consts.pone + " ))" + "\n"
				self.extra_asserts += "(assert (fp.gt " + consts[i].name + " " + Consts.none + " ))" + "\n"
		self.extra_asserts += "(check-sat)"
	def Score(self):
	
		score = 0
		other_score = 
		if Settings.BugMode:
			if self.Inconsistent():
				return 1.0
			else:
				return 0.0

		if len(self.times) == 1:
			score = 0
			for solver in self.times:
				score += self.times[solver]
		else:
			main_score = -1
			other_score = 999999999999999.0
			for solver in self.times:
				if solver == Settings.PrimarySolver:
					main_score = self.times[solver]
				else:
					other_score = min(other_score,self.times[solver])
		
			if other_score >= Settings.SolverTimeout:
				other_score = Settings.SolverTimeout * 2.0
			score = other_score - main_score
		return score
			
			
	def ToString(self,consts=[],justVal = True):
		ast = self.ToAST(consts,justVal)
		if justVal:
			return str(ast)
		if justVal:	
			return str(smtlib_string(ast,consts))
		else:
			return self.extra_consts+smtlib_string(ast,consts)+self.extra_asserts
		
	def ToAST(self,consts=[],justVal=True):
		if  justVal:
			return self.ConvertList()
		ast = []
		#ast = [mk_set_logic("QF_FP")]
		for i in range(len(consts)):
			if Settings.ConstNonNanTerms:
				ast.append(mk_assert(mk_not(mk_fp_isNan(consts[i]))))
			if Settings.ConstNonInfTerms:
				ast.append(mk_assert(mk_not(mk_fp_isInfinite(consts[i]))))
			if Settings.ConstNonZeroTerms:
				ast.append(mk_assert(mk_not(mk_fp_isZero(consts[i]))))
			if Settings.ConstNonSubNormalTerms:
				ast.append(mk_assert(mk_not(mk_fp_isSubnormal(consts[i]))))
		
		if Settings.ForceUnsatisfiableInstance:
			ast.append(mk_assert(mk_and(self.ConvertList(),mk_not(self.ConvertList()))))
		elif Settings.ForceSatisfiableInstance:
			ast.append(mk_assert(mk_or(self.ConvertList(),mk_not(self.ConvertList()))))
		else:
			ast.append(mk_assert(self.ConvertList()))
		
		#ast.append(mk_check_sat())
		return ast
		
	def ConvertList(self,form = None, isDriver=True):
		if isDriver:
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
				args.append(self.ConvertList(form[i],False))
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
			start = 1
			if op.isRounded:
				start = 2
				if countRound:
					ret += 1
			for i in range(start,len(form)):
				ret += self.NumTerms(form[i])
			return ret
	
	def NumConsts(self,form=None,isDriver = True):
		if isDriver:
			form = self.val
		assert len(form) > 0
		#single float
		if len(form) == 1:
			return 1
		else:
			op = form[0]
			ret = 0
			start = 1
			if op.isRounded:
				start = 2
			for i in range(start,len(form)):
				ret += self.NumTerms(form[i],False)
			return ret
	def NumFloatOps(self,form=None,isDriver=True):
		if isDriver:
			form = self.val
		assert len(form) > 0
		#single float
		if len(form) == 1:
			return 0
		else:
			op = form[0]
			ret = 0
			if not op.isBoolean:
				ret = 1
			start = 1
			if op.isRounded:
				start = 2
			for i in range(start,len(form)):
				ret += self.NumFloatOps(form[i],False)
			return ret

	def ToFile(self,fname=""):
		out = open(fname,"w")
		out.write(";  time  = "  + str(self.times) 		+ "\n" )
		out.write(";  terms = "  + str(self.NumTerms()) 	+ "\n" )
		out.write(";  score = "  + str(self.Score())	+ "\n")
		out.write(";  stdout= "  + str(self.stdout)  		+ "\n")
		out.write(self.ToString(self.consts,justVal=False))
		out.close()

	def __lt__(self, other):
		return self.Score() < other.Score()
	
	def Inconsistent(self):
		print("stdout",self.stdout)
		for solver in self.stdout:
			clean = ""
			for i in range(len(self.stdout[solver])):
				if self.stdout[solver][i].isalpha():
					clean = clean + self.stdout[solver][i]
			self.stdout[solver] = clean
		ans = ""
		for solver in self.stdout:
			if self.stdout[solver] == "timeout" or self.stdout[solver] == "unknown" or self.stdout[solver] == "err":
				continue
			if ans == "":
				ans = self.stdout[solver]
				continue
			if ans == self.stdout[solver]:
				continue
			print(ans + " != " + self.stdout[solver])
			return True
		return False
	
	#def ToMatrix(self,gen):
		#for i in range(