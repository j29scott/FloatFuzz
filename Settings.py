## Fuzzer Settings
FuzzerNumberOfIterations = 5
FuzzerPopulation = 5
FuzzerNumberOfMutations = 2
FuzzerNumberOfHardestKept = 1
FuzzerOverrideTerminationOnMaxScore = False


## Solver Settings
SolverTimeout = 30
SolverMemoryLimit = None

## Generator Settings
GeneratorDepthBasedGeneration = True
GeneratorMaxDepth = 3
GeneratorNumConst = 3
GeneratorConstWeight = 1
GeneratorTermBasedGeneration = False

## Logger
Verbose = 1

## Float Settings
FloatWidth = 32

##Const Settings
ConstNonNanTerms = True
ConstNonInfTerms = True
ConstNonZeroTerms = True
ConstNonSubNormalTerms = False
ConstRestrictRange = False
ConstMinValue = -1.0
ConstMaxValue = 1.0


##RNG
PythonRandomSeed = -1