import sys
import numpy as np
import matplotlib.pyplot as plt
import glob
import io
import json

max_n = 100

def getTimes(files):
	data = []
	dicts = []
	for i in range(len(files)):
		file = open(files[i])
		for line in file.readlines():
			if line.find(";  time  =") != -1:
				data.append(line)
	for i in range(len(data)):
		line = data[i]
		line = line[10:]
		line=line.replace("'", '"')
		d = json.loads(line)
		dicts.append(d)
	return dicts

def makeCactiLine(files):
	dicts = getTimes(files)
	data = {}
	for i in range(len(dicts)):
		for solver in dicts[i]:
			if solver in data:
				data[solver].append(dicts[i][solver])
			else:
				data[solver] = [dicts[i][solver]]
	for solver in data:
		data[solver].sort()
	cacti = {}
	for solver in data:
		cacti[solver] = []
		for i in range(len(data[solver])):
			if i == 0:
				cacti[solver].append(data[solver][i])
			elif data[solver][i] >= 600:
				break
			else:
				cacti[solver].append(data[solver][i] + cacti[solver][i-1])
	#print(cacti)
	print(len(cacti))
	for solver in cacti:
		while len(cacti[solver]) > max_n:
			cacti[solver].pop(0)
	return cacti

	
dir = "../data/7_28_test_mathvz3/final/"	
	
all = makeCactiLine(glob.glob(dir + "*rand*"))
plt.plot(all['z3'],label = "z3 rand")
plt.plot(all['mathsat'],label = "MathSat rand")	

plt.legend()
plt.show()

all = makeCactiLine(glob.glob(dir + "*Eps*"))
plt.plot(all['z3'],label = "z3 eps")
plt.plot(all['mathsat'],label = "MathSat eps")	

plt.legend()
plt.show()

all = makeCactiLine(glob.glob(dir + "*Thomp*"))
plt.plot(all['z3'],label = "z3 Thomp")
plt.plot(all['mathsat'],label = "MathSat Thomp")	

plt.legend()
plt.show()

all = makeCactiLine(glob.glob(dir + "*UCB*"))
plt.plot(all['z3'],label = "z3 UCB")
plt.plot(all['mathsat'],label = "MathSat UCB")	

plt.legend()
plt.show()


