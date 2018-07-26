import sys
import numpy as np
import matplotlib.pyplot as plt
import glob

timeout = 600
length = 500
min_points = 1
npop = 25
def getData(files):
	avg = []
	data = []
	N = 0
	for i in range(0,len(files)):
		try:
			filedata = np.loadtxt(files[i])
			if isinstance(filedata,np.ndarray) and len(filedata.shape) == 1 and filedata.shape[0] >= min_points:
				data.append(filedata)
			else:
				print("Warning - Bad input: " + files[i])
		except ValueError:
			print("Bad data in " + str(files[i]))
		
		if len(data) > 0:
			N = max(N,len(data[-1]))
	N =min(N,length)
	for i in range(N):
		for j in range(len(data)):
			if i < len(data[j]):
				if data[j][i] >= timeout and data[j][i] < timeout + 30:
					data[j][i] = timeout
					#assert len(data[j]) == i + 1 , "wtf"
					while len(data[j]) < npop:
						#data[j].append(timeout)
						data[j] = np.append(data[j],timeout)
					break
		x = 0.0
		m=0.0
		for j in range(len(data)):
			if i < len(data[j]):
				x += data[j][i]
				m += 1.0
				if data[j][i] > 605:
					print(x,files[j])
					print(data[j])
					sys.exit(1)
		avg.append(x/m)
	return avg


scores = []
scores.append(getData(glob.glob("FloatFuzz/data/7_25_test2/run*random*.txt")))
scores.append(getData(glob.glob("FloatFuzz/data/7_25_test2/run*Eps*.txt")))		
scores.append(getData(glob.glob("FloatFuzz/data/7_25_test2/run*Thomp*.txt")))
scores.append(getData(glob.glob("FloatFuzz/data/7_25_test2/run*UCB*.txt")))
plt.plot(scores[0],label = "Random")
plt.plot(scores[1],label = "Epsilon")
plt.plot(scores[2],label = "Thompson")
plt.plot(scores[3],label = "UCB")
plt.legend()
plt.show()
