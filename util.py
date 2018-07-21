import Settings
def LogPrint(msg,verbose = 1):
	assert isinstance(msg,str), "Bad input"
	if verbose >= Settings.Verbose:
		print(msg,flush = True)