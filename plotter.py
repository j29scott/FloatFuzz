import numpy as np
import matplotlib.pyplot as plt
import sys
print (sys.argv)

plotData = []
for i in range(1,len(sys.argv)):
	plotData.append(np.loadtxt(sys.argv[i],delimiter="\n"))
xAxis = []
for i in range(10000):
	xAxis.append(i)
for i in range(len(plotData)):
	plt.plot(xAxis[0:len(plotData[i])],plotData[i],label = sys.argv[i+1])

plt.legend()
plt.show()
