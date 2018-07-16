import logging
logger = logging.getLogger(__name__)
logging.basicConfig(level=logging.ERROR)

from functools import reduce
from operator import add, sub, mul, lt, le, ge, gt, and_, or_, eq, contains, concat

from slap.theory.core import Bool
from slap.theory.reals_ints import Int
from slap.theory.strings import String
from slap.interface.context import Context

class ConcreteContext(Context):
    def __init__(self, *args, **kw):
        Context.__init__(self, *args, **kw)

    def BoolVal(self, x):
        if isinstance(x, Bool):
            return bool(x.val)
        elif isinstance(x, bool):
            return x
        else:
            raise TypeError("%s must be Bool!" %x)

    def IntVal(self, x):
        if isinstance(x, Int):
            return int(x.val)
        elif isinstance(x, int):
            return x
        else:
            raise TypeError("%s must be Int!" %x)

    def StringVal(self, x):
        if isinstance(x, String):
            return str(x.val)
        elif isinstance(x, str):
            return x
        else:
            raise TypeError("%s must be String!" %x)

    And = lambda self, *x : and_(*x)
    Or = lambda self, *x : or_(*x)
    Eq = lambda self, x, y : eq(x, y)
    Implies = lambda self, x, y : True if not x else y

    def If(self, x, y, z):
        return y if x else z

    add = lambda self, *x : reduce(add, x)
    sub = lambda self, *x : reduce(sub, x) if len(x) > 1 else -x[0]
    mul = lambda self, *x : reduce(mul, x)
    
    lt = lambda self, *x : reduce(lt, x)
    le = lambda self, *x : reduce(le, x)
    gt = lambda self, *x : reduce(gt, x)
    ge = lambda self, *x : reduce(ge, x)

    concat = lambda self, *x : reduce(concat, x)
    contains = lambda self, *x : reduce(contains, x)

    strlt = lt
    strle = le

    def prefixof(self, x, y):
        return x.startswith(y)

    def suffixof(self, x, y):
        return x.endswith(y)

    # TODO Need to define all these with stuff in computation folder
    FPAbs = lambda self, *x : None
    FPNeg = lambda self, *x : None
    FPAdd = lambda self, *x : None
    FPSub = lambda self, *x : None
    FPMul = lambda self, *x : None
    FPDiv = lambda self, *x : None
    FPFMA = lambda self, *x : None
    FPRem = lambda self, *x : None
    FPSqrt = lambda self, *x : None
    FPRoundToIntegral = lambda self, *x : None
    FPMin = lambda self, *x : None
    FPMax = lambda self, *x : None
    FPLEQ = lambda self, *x : None
    FPLT = lambda self, *x : None
    FPGEQ = lambda self, *x : None
    FPGT = lambda self, *x : None
    FPEQ = lambda self, *x : None
    FPIsNormal = lambda self, *x : None
    FPIsSubNormal = lambda self, *x : None
    FPIsZero = lambda self, *x : None
    FPIsInfinite = lambda self, *x : None
    FPIsNan = lambda self, *x : None
    FPIsNegative = lambda self, *x : None
    FPIsPositive = lambda self, *x : None