import logging
logger = logging.getLogger(__name__)
logging.basicConfig(level=logging.ERROR)

import functools

from slap.interface import AST, SMTLIB20, SMTLIB26

import slap.theory.core
import slap.theory.reals_ints

def BitVec_n(n):
    return lambda name, args=[] : BitVec(name, n, args)

class BitVec(slap.theory.core.Sort):
    def __init__(self, name, size, arg_sorts=[]):
        slap.theory.core.Sort.__init__(self, name, arg_sorts)
        self.size = size

    ## UNARY OPERATORS
    def __neg__(self):
        return OPS["bvneg"]([self])

    def __invert__(self):
        return OPS["bvneg"]([self])

    ## BINARY OPERATORS
    def __add__(self, other):
        return OPS["bvadd"]([self, other])

    def __radd__(self, other):
        return OPS["bvadd"]([self, other])

    def __lshift__(self, other):
        return OPS["bvshl"]([self, other])

    def __rshift__(self, other):
        return OPS["bvshr"]([self, other])

    def __mul__(self, other):
        return OPS["bvmul"]([self, other])

    def __or__(self, other):
        return OPS["bvor"]([self, other])

    def __and__(self, other):
        return OPS["bvand"]([self, other])

    ## COMPARISONS
    def __lt__(self, other):
        return OPS["bvslt"]([self, other])

class BitVecFuncApp(slap.theory.core.FuncApp, BitVec):
    def __init__(self, func, args):
        slap.theory.core.FuncApp.__init__(self, func, args)
        size = max([a.size for a in args if isinstance(a, BitVec)])
        BitVec.__init__(self, str(self), size)

BitVec.app = BitVecFuncApp

class BitVecVal(slap.theory.core.SpecConstant, BitVec):
    def __init__(self, val, size):
        slap.theory.core.SpecConstant.__init__(self, val)
        self.size = size

    def cval(self, ctx):
        return ctx.BitVecVal(self.val, self.size)

    def __str__(self):
        return self.to_string(SMTLIB26)

    __repr__ = __str__
    
    def to_string(self, language):
        if language == SMTLIB26:
            return "(_ bv%d %d)" %(self.val, self.size)
        else:
            return "%dBV%d" %(self.size, self.val)

class BVAdd(BitVec):
    def __init__(self):
        name = {
            AST: "BVAdd",
            SMTLIB26: "bvadd"
        }
        BitVec.__init__(self, name, None, BitVec)

    def cval(self, ctx):
        return lambda *x: ctx.bvadd(*[y.cval(ctx) for y in x])

class BVAnd(BitVec):
    def __init__(self):
        name = {
            AST: "BVAnd",
            SMTLIB26: "bvand"
        }
        BitVec.__init__(self, name, None, BitVec)

    def cval(self, ctx):
        return lambda *x: ctx.bvand(*[y.cval(ctx) for y in x])

class BVOr(BitVec):
    def __init__(self):
        name = {
            AST: "BVOr",
            SMTLIB26: "bvor"
        }
        BitVec.__init__(self, name, None, BitVec)

    def cval(self, ctx):
        return lambda *x: ctx.bvor(*[y.cval(ctx) for y in x])

class BVXor(BitVec):
    def __init__(self):
        name = {
            AST: "BVXor",
            SMTLIB26: "bvxor"
        }
        BitVec.__init__(self, name, None, BitVec)

    def cval(self, ctx):
        return lambda *x: ctx.bvxor(*[y.cval(ctx) for y in x])

class BVSub(BitVec):
    def __init__(self):
        name = {
            AST: "BVSub",
            SMTLIB26: "bvsub"
        }
        BitVec.__init__(self, name, None, BitVec)

    def cval(self, ctx):
        return lambda *x: ctx.bvsub(*[y.cval(ctx) for y in x])

class BVMul(BitVec):
    def __init__(self):
        name = {
            AST: "BVMul",
            SMTLIB26: "*"
        }
        BitVec.__init__(self, name, None, BitVec)

    def cval(self, ctx):
        return lambda *x: ctx.bvmul(*[y.cval(ctx) for y in x])

class BVLT(slap.theory.core.Bool):
    def __init__(self):
        name = {
            AST: "BVLT",
            SMTLIB26: "bvlt"
        }
        BitVec.__init__(self, name, None, [BitVec, BitVec])

    def cval(self, ctx):
        def f(x,y):
            x = x.cval(ctx)
            y = y.cval(ctx)
            return ctx.bvlt(x,y)
        return f

class BVUGE(slap.theory.core.Bool):
    def __init__(self):
        name = {
            AST: "BVUGE",
            SMTLIB26: "bvuge"
        }
        BitVec.__init__(self, name, None, [BitVec, BitVec])

    def cval(self, ctx):
        def f(x,y):
            x = x.cval(ctx)
            y = y.cval(ctx)
            return ctx.bvuge(x,y)
        return f

class BVURem(slap.theory.core.Bool):
    def __init__(self):
        name = {
            AST: "BVURem",
            SMTLIB26: "bvurem"
        }
        BitVec.__init__(self, name, None, [BitVec, BitVec])

    def cval(self, ctx):
        def f(x,y):
            x = x.cval(ctx)
            y = y.cval(ctx)
            return ctx.bvurem(x,y)
        return f

class BVNeg(BitVec):
    def __init__(self):
        name = {
            AST: "BVNeg",
            SMTLIB26: "bvneg"
        }
        BitVec.__init__(self, name, None, [BitVec])

    def cval(self, ctx):
        return lambda x: ctx.bvneg(x.cval(ctx))

class BVNot(BitVec):
    def __init__(self):
        name = {
            AST: "BVNot",
            SMTLIB26: "bvnot"
        }
        BitVec.__init__(self, name, None, [BitVec])

    def cval(self, ctx):
        return lambda x: ctx.bvnot(x.cval(ctx))

class BVLShL(BitVec):
    def __init__(self):
        name = {
            AST: "BVLShL",
            SMTLIB26: "bvlshl"
        }
        BitVec.__init__(self, name, None, [BitVec, slap.theory.reals_ints.Int])

    def cval(self, ctx):
        return lambda x, y: ctx.bvlshl(x.cval(ctx), y.cval(ctx))

class BVLShR(BitVec):
    def __init__(self):
        name = {
            AST: "BVLShR",
            SMTLIB26: "bvlshr"
        }
        BitVec.__init__(self, name, None, [BitVec, slap.theory.reals_ints.Int])

    def cval(self, ctx):
        return lambda x, y: ctx.bvlshr(x.cval(ctx), y.cval(ctx))

class BVExtract(BitVec):
    def __init__(self):
        name = {
            AST: "BVExtract",
            SMTLIB26: "extract"
        }
        BitVec.__init__(self, name, None, [slap.theory.reals_ints.Int, slap.theory.reals_ints.Int, BitVec])

    def cval(self, ctx):
        return lambda high, low, a: ctx.extract(high, low, a.cval(ctx))

class BVConcat(BitVec): 
    def __init__(self):
        name = {
            AST: "BVConcat",
            SMTLIB26: "concat"
        }
        BitVec.__init__(self, name, BitVec)

    def cval(self, ctx):
        return lambda *x: ctx.bvconcat(*[y.cval(ctx) for y in x])

OPS = {
    "bvand": BVAnd(),
    "bvor": BVOr(),
    "bvxor": BVXor(),
    "bvadd": BVAdd(),
    "bvsub": BVSub(),
    "bvmul": BVMul(),
    "bvslt": BVLT(),
    "bvuge": BVUGE(),
    "bvurem": BVURem(),
    "bvneg": BVNeg(),
    "bvnot": BVNot(),
    "bvlshl": BVLShL(),
    "bvlshr": BVLShR(),
    "extract": BVExtract(),
    "concat": BVConcat(),
}