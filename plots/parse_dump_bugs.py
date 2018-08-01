import glob
import json



N = 0
unique = set()
def parse(files):
	N = len(files)
	print("Found " + str(N) + " files.")
	ret = {}
	
	for i in range(len(files)):
		
		file = open(files[i],"r")
		lines = file.readlines()
		results = lines[3]
		inst = lines[17]
		
		if inst in unique:
			#print(inst + " already in!")
			continue
		unique.add(inst)
		results = results[11:]
		results=results.replace("'", '"')
		d = json.loads(results)
		#print(d)
		
		hash = ""
		if d['z3'] == 'sat':
			hash = hash + 's'
		elif d['z3'] == 'unsat':
			hash = hash + 'u'
		else:
			hash = hash + 'e'
			
		if d['mathsat'] == 'sat':
			hash = hash + 's'
		elif d['mathsat'] == 'unsat':
			hash = hash + 'u'
		else:
			hash = hash + 'e'
			
		if d['xsat'] == 'sat':
			hash = hash + 's'
		elif d['xsat'] == 'unsat':
			hash = hash + 'u'
		else:
			hash = hash + 'e'
			
		if d['colibri'] == 'sat':
			hash = hash + 's'
		elif d['colibri'] == 'unsat':
			hash = hash + 'u'
		else:
			hash = hash + 'e'
			
			
		##Bad Parse off	
		if hash == 'seee':
			continue
		if hash == 'esee':
			continue
			
			
		if hash in ret:
			ret[hash] += 1
		else:
			ret[hash] = 1
		
			
		
	return ret

	
	
	
	
	
	
	
	
	
	
dir = "../../bugs/tmpdata/bug/"
print(parse(glob.glob(dir + "*")))