import sys
import numpy as np
import matplotlib.pyplot as plt
import glob
import io


def avgEps(files):
	emeans = []
	N = 0
	for i in range(len(files)):
		file = open(files[i],"r")
		data = []
		
		for line in file.readlines():
			pt = line.split(' ')
			while pt[-1] == ' ' or pt[-1] == '\n':
				pt.pop()
			for i in range(len(pt)):
				pt[i] = float(pt[i])
			data.append(pt)
		if len(data) >= 5:
			data.append(pt)
		else:
			print("Bad input " + str(files[i]))
			continue
		if len(emeans) == 0:
			emeans = data[1][0] * np.asarray(data[3])
			
		else:
			emeans += data[1][0] * np.asarray(data[3])
		N += data[1][0]
		#print(data)
		file.close()
	s = io.StringIO()
	np.savetxt(s, emeans/N, fmt='%.5f', newline=",")
	return s.getvalue()
	
def avgUCB(files):
	emeans = []
	N = 0
	for i in range(len(files)):
		file = open(files[i],"r")
		data = []
		
		for line in file.readlines():
			pt = line.split(' ')
			while pt[-1] == ' ' or pt[-1] == '\n':
				pt.pop()
			for i in range(len(pt)):
				pt[i] = float(pt[i])
			data.append(pt)
		if len(data) >= 4:
			data.append(pt)
		else:
			print("Bad input " + str(files[i]))
			continue
		if len(emeans) == 0:
			emeans = data[1][2] * np.asarray(data[1])
			
		else:
			emeans += data[1][2] * np.asarray(data[1])
		N += data[1][2]
		#print(data)
		file.close()
	s = io.StringIO()
	np.savetxt(s, emeans/N, fmt='%.5f', newline=",")
	return s.getvalue()
	
def avgThomp(files):
	emeans = []
	abs = []
	N = 0
	for i in range(len(files)):
		file = open(files[i],"r")
		data = []
		
		for line in file.readlines():
			pt = line.split(' ')
			while pt[-1] == ' ' or pt[-1] == '\n':
				pt.pop()
			for i in range(len(pt)):
				pt[i] = float(pt[i])
			data.append(pt)
		if len(data) >= 3:
			data.append(pt)
		else:
			print("Bad input " + str(files[i]))
			continue
		
		ab = []
		for i in range(int(len(data[1])/2)):
			ab.append([data[1][2*i],data[1][2*i+1]])
		em = np.zeros([len(ab)])
		k = 100
		for i in range(len(em)):
			for j in range(k):
				em[i] += np.random.beta(ab[i][0],ab[i][1])
			em[i] /= k
		
		if len(emeans) == 0:
			emeans = data[1][2] * em
			
		else:
			emeans += data[1][2] * em
		N += data[1][2]
		#print(data)
		file.close()
	s = io.StringIO()
	np.savetxt(s, emeans/N, fmt='%.5f', newline=",")
	return s.getvalue()


		
	
print(avgEps(glob.glob("FloatFuzz/data/7_25_train/Eps*.model")))
print(avgThomp(glob.glob("FloatFuzz/data/7_25_train/Thomp*.model")))
print(avgUCB(glob.glob("FloatFuzz/data/7_25_train/UCB*.model")))
#getData(glob.glob("FloatFuzz/data/7_23_train/run*Eps*.txt")))	
#getData(glob.glob("FloatFuzz/data/7_23_train/run*Thomp*.txt"))
#getData(glob.glob("FloatFuzz/data/7_23_train/run*UCB*.txt"))
#plt.plot(scores[0],label = "Random")
#plt.plot(scores[1],label = "Epsilon")
#plt.plot(scores[2],label = "Thompson")
#plt.plot(scores[3],label = "UCB")
#plt.legend()
#plt.show()
