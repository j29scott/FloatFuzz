import logging
logger = logging.getLogger(__name__)
logging.basicConfig(level=logging.ERROR)

from slap.interface import AST, SMTLIB20, SMTLIB26
import slap.theory.core

#TODO Need to support Reals as well

class Int(slap.theory.core.Sort):
    def __init__(self, name, arg_sorts=[]):
        slap.theory.core.Sort.__init__(self, name, arg_sorts)

    ## UNARY OPERATORS
    def __neg__(self):
        return OPS["-"]([self])

    ## BINARY OPERATORS
    def __add__(self, other):
        other = self.cast(other)
        return OPS["+"]([self, other])

    def __sub__(self, other):
        other = self.cast(other)
        return OPS["-"]([self, other])

    def __mul__(self, other):
        other = self.cast(other)
        return OPS["*"]([self, other])

    ## REVERSE OPERATORS
    def __radd__(self, other):
        other = self.cast(other)
        return self.__add__(other)

    def __rsub__(self, other):
        other = self.cast(other)
        return OPS["-"]([other, self]) #TODO CHECK!

    def __rmul__(self, other):
        other = self.cast(other)
        return self.__mul__(other)

    ## COMPARISONS
    def __le__(self, other):
        other = self.cast(other)
        return OPS["<="]([self, other])

    def __lt__(self, other):
        other = self.cast(other)
        return OPS["<"]([self, other])

    def __gt__(self, other):
        other = self.cast(other)
        return OPS[">"]([self, other])

    def __ge__(self, other):
        other = self.cast(other)
        return OPS[">="]([self, other])

    def cast(self, other):
        if isinstance(other, int):
            other = IntVal(other)
        elif not isinstance(other, Int):
            raise TypeError("%s:%s must be a Int!" %(other, type(other)))
        return other

class IntFuncApp(slap.theory.core.FuncApp, Int):
    def __init__(self, func, args):
        slap.theory.core.FuncApp.__init__(self, func, args)
        Int.__init__(self, str(self))

Int.app = IntFuncApp

class IntVal(slap.theory.core.SpecConstant, Int):
    def __init__(self, val):
        slap.theory.core.SpecConstant.__init__(self, val)
        Int.__init__(self, str(self))
    
    def cval(self, ctx):
        return ctx.IntVal(self.val)

class IntAdd(Int):
    def __init__(self):
        name = {
            AST: "IntAdd",
            SMTLIB26: "+"
        }
        Int.__init__(self, name, Int)

    def cval(self, ctx):
        return lambda *x: ctx.add(*[y.cval(ctx) for y in x])


class IntSub(Int):
    def __init__(self):
        name = {
            AST: "IntSub",
            SMTLIB26: "-"
        }
        Int.__init__(self, name, Int)

    def cval(self, ctx):
        return lambda *x: ctx.sub(*[y.cval(ctx) for y in x])


class IntMul(Int):
    def __init__(self):
        name = {
            AST: "IntMul",
            SMTLIB26: "*"
        }
        Int.__init__(self, name, Int)

    def cval(self, ctx):
        return lambda *x: ctx.mul(*[y.cval(ctx) for y in x])


class IntLE(slap.theory.core.Bool):
    def __init__(self):
        name = {
            AST: "IntLE",
            SMTLIB26: "<="
        }
        slap.theory.core.Bool.__init__(self, name, [Int, Int])

    def cval(self, ctx):
        return lambda x, y: ctx.le(x.cval(ctx), y.cval(ctx))


class IntLT(slap.theory.core.Bool):
    def __init__(self):
        name = {
            AST: "IntLT",
            SMTLIB26: "<"
        }
        slap.theory.core.Bool.__init__(self, name, [Int, Int])

    def cval(self, ctx):
        return lambda x, y: ctx.lt(x.cval(ctx), y.cval(ctx))


class IntGE(slap.theory.core.Bool):
    def __init__(self):
        name = {
            AST: "IntGE",
            SMTLIB26: ">="
        }
        slap.theory.core.Bool.__init__(self, name, [Int, Int])

    def cval(self, ctx):
        return lambda x, y: ctx.ge(x.cval(ctx), y.cval(ctx))


class IntGT(slap.theory.core.Bool):
    def __init__(self):
        name = {
            AST: "IntGT",
            SMTLIB26: ">"
        }
        slap.theory.core.Bool.__init__(self, name, [Int, Int])

    def cval(self, ctx):
        return lambda x, y: ctx.gt(x.cval(ctx), y.cval(ctx))

OPS = {
    "+": IntAdd(),
    "-": IntSub(),
    "*": IntMul(),
    "<=": IntLE(),
    ">=": IntGE(),
    "<": IntLT(),
    ">": IntGT(),
}