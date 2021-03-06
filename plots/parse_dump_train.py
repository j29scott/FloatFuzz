import sys
import numpy as np
import matplotlib.pyplot as plt
import glob

length = 1000
min_rew = 50
def getData(files):
	avg = []
	data = []
	N = 0
	for i in range(0,len(files)):
		filedata = np.loadtxt(files[i])
		if isinstance(filedata,np.ndarray) and len(filedata.shape) == 1 and filedata.shape[0] >= min_rew:
			data.append(filedata)
		else:
			print("Warning - Bad input: " + files[i])
		
		if len(data) > 0:
			N = max(N,len(data[-1]))
	N =min(N,length)
	for i in range(N):
		x = 0.0
		m=0.0
		for j in range(len(data)):
			if i < len(data[j]):
				x += data[j][i]
				m += 1.0
		avg.append(x/m)
	return avg


scores = []
dir = "../data/7_30/models/"
scores.append(getData(glob.glob(dir+"rand*.rew*")))
scores.append(getData(glob.glob(dir+"Eps*.rew*")))		
scores.append(getData(glob.glob(dir+"Thom*.rew*")))	
scores.append(getData(glob.glob(dir+"UCB*.rew*")))	
plt.plot(scores[0],label = "Random")
plt.plot(scores[1],label = "Epsilon")
plt.plot(scores[2],label = "Thompson")
plt.plot(scores[3],label = "UCB")
plt.xscale('log')
plt.legend()
plt.show()
