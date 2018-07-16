import logging
logger = logging.getLogger(__name__)
logging.basicConfig(level=logging.ERROR)

from slap.interface import AST, SMTLIB20, SMTLIB26
    
class Sort:
    def __init__(self, name, arg_sorts=None):
        self.name = name
        self.arg_sorts = arg_sorts

    def __call__(self, args):
        return self.app(self, args)

    def get_name(self, language):
        if isinstance(self.name, str):
            return self.name
        return self.name[language]

    to_string = get_name

    def __str__(self):
        return self.to_string(SMTLIB26)
    
    __repr__ = __str__

    @property
    def constant(self):
        if not isinstance(self.arg_sorts, list):
            return False
        return len(self.arg_sorts) == 0

    def cval(self, ctx):
        return ctx[self]

    def app(self, args):
        raise NotImplementedError()
    
    def cast(self, other):
        raise NotImplementedError()

    def __eq__(self, other):
        other = self.cast(other)
        return OPS["="]([self, other])

    def __ne__(self, other):
        other = self.cast(other)
        return OPS["not"]([OPS["="]([self, other])])

    def __add__(self, other):    
        raise NotImplementedError("ADD Not Implemented For %s" %type(self))
    def __sub__(self, other):    
        raise NotImplementedError("SUB Not Implemented For %s" %type(self))
    def __mul__(self, other):    
        raise NotImplementedError("MUL Not Implemented For %s" %type(self))
    def __truediv__(self, other):    
        raise NotImplementedError("TRUEDIV Not Implemented For %s" %type(self))
    def __floordiv__(self, other):    
        raise NotImplementedError("FLOORDIV Not Implemented For %s" %type(self))
    def __mod__(self, other):    
        raise NotImplementedError("MOD Not Implemented For %s" %type(self))
    def __pow__(self, other):    
        raise NotImplementedError("POW Not Implemented For %s" %type(self))
    def __and__(self, other):    
        raise NotImplementedError("AND Not Implemented For %s" %type(self))
    def __xor__(self, other):    
        raise NotImplementedError("XOR Not Implemented For %s" %type(self))
    def __or__(self, other):    
        raise NotImplementedError("OR Not Implemented For %s" %type(self))
    def __lshift__(self, other):    
        raise NotImplementedError("LSHIFT Not Implemented For %s" %type(self))
    def __rshift__(self, other):    
        raise NotImplementedError("RSHIFT Not Implemented For %s" %type(self))
    def __iadd__(self, other):    
        raise NotImplementedError("IADD Not Implemented For %s" %type(self))
    def __isub__(self, other):    
        raise NotImplementedError("ISUB Not Implemented For %s" %type(self))
    def __imul__(self, other):    
        raise NotImplementedError("IMUL Not Implemented For %s" %type(self))
    def __idiv__(self, other):    
        raise NotImplementedError("IDIV Not Implemented For %s" %type(self))
    def __ifloordiv__(self, other):    
        raise NotImplementedError("IFLOORDIV Not Implemented For %s" %type(self))
    def __imod__(self, other):    
        raise NotImplementedError("IMOD Not Implemented For %s" %type(self))
    def __ipow__(self, other):    
        raise NotImplementedError("IPOW Not Implemented For %s" %type(self))
    def __ilshift__(self, other):    
        raise NotImplementedError("ILSHIFT Not Implemented For %s" %type(self))
    def __irshift__(self, other):    
        raise NotImplementedError("IRSHIFT Not Implemented For %s" %type(self))
    def __iand__(self, other):    
        raise NotImplementedError("IAND Not Implemented For %s" %type(self))
    def __ixor__(self, other):    
        raise NotImplementedError("IXOR Not Implemented For %s" %type(self))
    def __ior__(self, other):    
        raise NotImplementedError("IOR Not Implemented For %s" %type(self))
    def __neg__(self):    
        raise NotImplementedError("NEG Not Implemented For %s" %type(self))
    def __pos__(self):    
        raise NotImplementedError("POS Not Implemented For %s" %type(self))
    def __abs__(self):    
        raise NotImplementedError("ABS Not Implemented For %s" %type(self))
    def __invert__(self):    
        raise NotImplementedError("INVERT Not Implemented For %s" %type(self))
    def __complex__(self):    
        raise NotImplementedError("COMPLEX Not Implemented For %s" %type(self))
    def __int__(self):    
        raise NotImplementedError("INT Not Implemented For %s" %type(self))
    def __long__(self):    
        raise NotImplementedError("LONG Not Implemented For %s" %type(self))
    def __float__(self):    
        raise NotImplementedError("FLOAT Not Implemented For %s" %type(self))
    def __oct__(self):    
        raise NotImplementedError("OCT Not Implemented For %s" %type(self))
    def __hex__(self):    
        raise NotImplementedError("HEX Not Implemented For %s" %type(self))
    def __lt__(self, other):    
        raise NotImplementedError("LT Not Implemented For %s" %type(self))
    def __le__(self, other):    
        raise NotImplementedError("LE Not Implemented For %s" %type(self))
    def __ge__(self, other):    
        raise NotImplementedError("GE Not Implemented For %s" %type(self))
    def __gt__(self, other):
        raise NotImplementedError("GT Not Implemented For %s" %type(self))
    def __len__(self):    
        raise NotImplementedError("LEN Not Implemented For %s" %type(self))

class FuncApp:
    def __init__(self, func: Sort, args: list):
        self.func = func
        self.args = args

    def to_string(self, language):
        if language in [SMTLIB26]:
            name = self.func.get_name(language)
            args = " ".join(a.to_string(language) if isinstance(a, Sort) else str(a) for a in self.args)
            return "(%s %s)" % (name, args)
        name = self.func.get_name(language)
        args = ", ".join(a.to_string(language) for a in self.args)
        return "%s(%s)" % (name, args)

    def __str__(self):
        return self.to_string(SMTLIB26)

    def cval(self, ctx):
        return (self.func.cval(ctx))(*self.args)

class SortFuncApp(FuncApp, Sort):
    def __init__(self, func, args):
        FuncApp.__init__(self, func, args)
        Sort.__init__(self, str(self))

Sort.app = SortFuncApp

class SpecConstant:
    def __init__(self, val):
        self.val = val

    def to_string(self, language):
        if isinstance(self.val, str):
            return "\"%s\"" % self.val
        else:
            return str(self.val)

    def __str__(self):
        if isinstance(self.val, str):
            return "\"%s\"" % self.val
        else:
            return str(self.val)

    def cval(self, ctx):
        raise NotImplementedError("Need to implement for type %s!" %type(self))

class Bool(Sort):
    def __init__(self, name, arg_sorts=None):
        Sort.__init__(self, name, arg_sorts)

    def __not__(self):
        return OPS["not"]([self])

    def __invert__(self):
        return OPS["not"]([self])

    def __and__(self, other):
        other = self.cast(other)
        return OPS["and"]([self, other])

    def __or__(self, other):
        other = self.cast(other)
        return OPS["or"]([self, other])

    def cast(self, other):
        if isinstance(other, bool):
            other = BoolVal(other)
        elif not isinstance(other, Bool):
            raise TypeError("%s (%s) must be a Bool!" %(other, type(other)))
        return other

class BoolFuncApp(FuncApp, Bool):
    def __init__(self, func, args):
        FuncApp.__init__(self, func, args)
        Bool.__init__(self, str(self))

Bool.app = BoolFuncApp

class BoolVal(SpecConstant, Bool):
    def __init__(self, val):
        SpecConstant.__init__(self, val)
        Bool.__init__(self, str(self))
    
    def cval(self, ctx):
        return ctx.BoolVal(self.val)

class Not(Bool):
    def __init__(self):
        name = {
            AST: "Not",
            SMTLIB26: "not"
        }
        Bool.__init__(self, name, [Bool])

    def cval(self, ctx):
        def f(x):
            x = x.cval(ctx)
            if isinstance(x, bool):
                return not x
            return ctx.Not(x)
        return f

class Eq(Bool):
    def __init__(self):
        name = {
            AST: "Eq",
            SMTLIB26: "="
        }
        Bool.__init__(self, name, Sort)

    def cval(self, ctx):
        def f(x,y):
            x = x.cval(ctx)
            y = y.cval(ctx)
            return ctx.Eq(x, y)
        return f

class And(Bool):
    def __init__(self):
        name = {
            AST: "And",
            SMTLIB26: "and"
        }
        Bool.__init__(self, name, Bool)

    def cval(self, ctx):
        def f(*x):
            args = [y.cval(ctx) for y in x]
            return ctx.And(*args)
        return f


class Or(Bool):
    def __init__(self):
        name = {
            AST: "Or",
            SMTLIB26: "or"
        }
        Bool.__init__(self, name, Bool)

    def cval(self, ctx):
        def f(*x):
            args = [y.cval(ctx) for y in x]
            return ctx.Or(*args)
        return f

class Implies(Bool):
    def __init__(self):
        name = {
            AST: "Implies",
            SMTLIB26: "=>"
        }
        Bool.__init__(self, name, [Bool, Bool])

    def cval(self, ctx):
        def f(x, y):
            x = x.cval(ctx)
            y = y.cval(ctx)
            return ctx.Implies(x,y)
        return f

class Distinct(Bool):
    def __init__(self):
        name = {
            AST: "Distinct",
            SMTLIB26: "distinct"
        }
        Bool.__init__(self, name, Bool)

    def cval(self, ctx):
        def f(*x):
            args = [y.cval(ctx) for y in x]
            return ctx.Distinct(*args)
        return f

class Ite(Sort):
    def __init__(self):
        name = {
            AST: "Ite",
            SMTLIB26: "ite"
        }
        Sort.__init__(self, name, [Bool, Sort, Sort])

    def cval(self, ctx):
        def f(x, y, z):
            x = x.cval(ctx)
            y = y.cval(ctx)
            z = z.cval(ctx)
            return ctx.If(x, y, z)
        return f

OPS = {
    "=": Eq(),
    "not": Not(),
    "and": And(),
    "or": Or(),
    "=>": Implies(),
    "distinct": Distinct(),
    "ite": Ite()
}