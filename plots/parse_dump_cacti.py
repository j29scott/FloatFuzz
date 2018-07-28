import sys
import numpy as np
import matplotlib.pyplot as plt
import glob
import io
import json



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
	print(cacti)
	return cacti

all = makeCactiLine(glob.glob("../data/7_26_test/final/*rand*"))
plt.plot(all['z3'],label = "z3 rand")
plt.plot(all['mathsat'],label = "MathSat rand")	

all = makeCactiLine(glob.glob("../data/7_26_test/final/*Eps*"))
plt.plot(all['z3'],label = "z3 eps")
plt.plot(all['mathsat'],label = "MathSat eps")	

all = makeCactiLine(glob.glob("../data/7_26_test/final/*Thomp*"))
plt.plot(all['z3'],label = "z3 Thomp")
plt.plot(all['mathsat'],label = "MathSat Thomp")	

all = makeCactiLine(glob.glob("../data/7_26_test/final/*UCB*"))
plt.plot(all['z3'],label = "z3 UCB")
plt.plot(all['mathsat'],label = "MathSat UCB")	


#print(avgEps(glob.glob("FloatFuzz/data/7_25_train/Eps*.model")))
#print(avgThomp(glob.glob("FloatFuzz/data/7_25_train/Thomp*.model")))
#print(avgUCB(glob.glob("FloatFuzz/data/7_25_train/UCB*.model")))
#getData(glob.glob("FloatFuzz/data/7_23_train/run*Eps*.txt")))	
#getData(glob.glob("FloatFuzz/data/7_23_train/run*Thomp*.txt"))
#getData(glob.glob("FloatFuzz/data/7_23_train/run*UCB*.txt"))
#plt.plot(scores[0],label = "Random")
#plt.plot(scores[1],label = "Epsilon")
#plt.plot(scores[2],label = "Thompson")
#plt.plot(scores[3],label = "UCB")
plt.legend()
plt.show()
