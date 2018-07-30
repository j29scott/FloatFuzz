## Fuzzer Settings
FuzzerNumberOfIterations = 25
FuzzerPopulation = 5
FuzzerNumberOfMutations = 2
FuzzerNumberOfHardestKept = 1
FuzzerOverrideTerminationOnMaxScore = False
FuzzerNumberPopulationStart = 1

## Solver Settings
PrimarySolver = "z3"
BugMode = True
SolverTimeout = 30
SolverMemoryLimit = None



## Generator Settings
GeneratorDepthBasedGeneration = False
GeneratorMaxDepth = 2
GeneratorNumConst = 10
GeneratorConstWeight = 1
GeneratorTermBasedGeneration = False

##OPERATER Settings
# OperatorAbs    = False
# OperatorNeg    = True
# OperatorAdd    = True
# OperatorSub    = True
# OperatorMul    = True
# OperatorDiv    = True
# OperatorFMA    = False
# OperatorRem    = False
# OperatorR2I    = False
# OperatorSqrt   = False
# OperatorMin    = False
# OperatorMax    = False
# OperatorLeq    = True
# OperatorLt     = True
# OperatorGeq    = True
# OperatorGt     = True
# OperatorEq     = True
# OperatorIsNorm = False
# OperatorIsSub  = False
# OperatorIsZero = False
# OperatorIsNan  = False
# OperatorIsNeg  = False
# OperatorIsPos  = False


OperatorAbs    = True
OperatorNeg    = True
OperatorAdd    = True
OperatorSub    = True
OperatorMul    = True
OperatorDiv    = True
OperatorFMA    = True
OperatorRem    = True
OperatorR2I    = True
OperatorSqrt   = True
OperatorMin    = True
OperatorMax    = True
OperatorLeq    = True
OperatorLt     = True
OperatorGeq    = True
OperatorGt     = True
OperatorEq     = True
OperatorIsNorm = True
OperatorIsSub  = True
OperatorIsZero = True
OperatorIsNan  = True
OperatorIsNeg  = True
OperatorIsPos  = True

##
ForceSatisfiableInstance = False
ForceUnsatisfiableInstance = False


## Logger
Verbose = 1

## Float Settings
FloatWidth = 32

##Const Settings
ConstNonNanTerms = False
ConstNonInfTerms = False
ConstNonZeroTerms = False
ConstNonSubNormalTerms = False
ConstRestrictRange_m1_p1 = True
ConstRestrictRange_fpmin_fpmax = False


##RNG
PythonRandomSeed = -1

##Bandit
BanditTrainingMode = True
BanditNumberTrainingIterations = 5000
