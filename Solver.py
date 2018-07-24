import Settings
import os
import sys
import subprocess
import time
from slap.interface.solver import solve

def subprocess_cmd(command):
	process = subprocess.Popen(command,stdout=subprocess.PIPE, shell=True)
	proc_stdout = process.communicate()[0].decode('utf-8').strip()
	print(proc_stdout,file=sys.stderr)
	lines = str(proc_stdout).split("\n")
	return lines[-1]

class Z3Solver:
	def __init__(self):
		self.name = "z3"
	def Solve(self,inst,consts,saveIfHard=True,outFilePath="tmpdata/hard/"):
		if self.name in inst.times:
			return
			
		time = -1
		ast = inst.ToAST(consts,justVal = False)
		res = solve(ast,consts,extra_consts=inst.extra_consts,extra_asserts=inst.extra_asserts)
		inst.times[self.name] = round(min(res['time'],Settings.SolverTimeout),3)
		inst.stdout[self.name] = res['stdout']
		if inst.stdout[self.name].find("error") != -1:
			print (res['stdout'])
			print (inst.ToString(consts))
			sys.exit(1)
		if inst.times[self.name] >= Settings.SolverTimeout * 0.90 and saveIfHard:
			inst.ToFile(outFilePath+inst.name+".smt")
		return
		
		
class XSatSolver:
	def __init__(self):
		self.name = "xsat"
		
	def Solve(self,inst,consts,saveIfHard=True,outFilePath="tmpdata/hard/"):
		if self.name in inst.times:
			return
		inst.ToFile("tmp/"+inst.name+".smt")
		
		cmd = "cd solvers/xsat;" + ("make IN="+"../../tmp/"+inst.name+".smt ;") + "python2 xsat.py ; " + "cd ../../ ;"
		start = time.time()
		out = subprocess_cmd(cmd)
		inst.times[self.name] = time.time() - start
		inst.stdout[self.name] = out 
		
		
		
class Colibri:
	def __init__(self):
		self.name = "colibri"
		
	def Solve(self,inst,consts,saveIfHard=True,outFilePath="tmpdata/hard/"):
		if self.name in inst.times:
			return
		inst.ToFile("tmp/"+inst.name+".smt")
		
		#cmd = "cd solvers/xsat;" + ("make IN="+"../../tmp/"+inst.name+".smt ;") + "python2 xsat.py ; " + "cd ../../ ;"
		cmd = "timeout " + str(Settings.SolverTimeout) + " " + "./solvers/colibri/bin/starexec_run_default tmp/"+inst.name+".smt"
		start = time.time()
		out = subprocess_cmd(cmd)
		inst.times[self.name] = time.time() - start
		inst.stdout[self.name] = out 
		
		
		
class MathSat:
	def __init__(self):
		self.name = "mathsat"
		
	def Solve(self,inst,consts,saveIfHard=True,outFilePath="tmpdata/hard/"):
		if self.name in inst.times:
			return
		inst.ToFile("tmp/"+inst.name+".smt")
		
		#cmd = "cd solvers/xsat;" + ("make IN="+"../../tmp/"+inst.name+".smt ;") + "python2 xsat.py ; " + "cd ../../ ;"
		cmd = "timeout " + str(Settings.SolverTimeout) + " " + "./solvers/mathsat-5.5.2-linux-x86_64/bin/mathsat tmp/"+inst.name+".smt"
		start = time.time()
		out = subprocess_cmd(cmd)
		inst.times[self.name] = min(time.time() - start,Settings.SolverTimeout)
		inst.stdout[self.name] = out 
		os.remove("tmp/"+inst.name+".smt")
