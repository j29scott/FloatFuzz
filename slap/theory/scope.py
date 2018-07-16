import logging
logger = logging.getLogger(__name__)
logging.basicConfig(level=logging.ERROR)

from slap.interface import AST, SMTLIB20, SMTLIB26

class Let:
    def __init__(self, bindings, term):
        self.bindings = bindings
        self.term = term

    def cval(self, ctx):
        return self.term.cval(ctx)

    def to_string(self, language):
        bindings = " ".join(a.to_string(AST) for a in self.bindings)
        return "(let (%s) %s)" % (bindings, self.term.to_string(language))

    def __str__(self):
        return self.to_string(SMTLIB26)
    
    __repr__ = __str__

class Binding:
    def __init__(self, name, term):
        self.name = name
        self.term = term

    def cval(self, ctx):
        return self.term.cval(ctx)

    def to_string(self, language):
        if language == SMTLIB26:
            return self.name
        elif language == AST:
            return "(%s %s)" %(self.name, self.term)

    def __str__(self):
        return self.to_string(SMTLIB26)

    __repr__ = __str__

    def __add__(self, other):
        return self.term.__add__(other)
    def __sub__(self, other):
        return self.term.__sub__(other)
    def __mul__(self, other):
        return self.term.__mul__(other)
    def __truediv__(self, other):
        return self.term.__truediv__(other)
    def __floordiv__(self, other):
        return self.term.__floordiv__(other)
    def __mod__(self, other):
        return self.term.__mod__(other)
    def __pow__(self, other):
        return self.term.__pow__(other)
    def __and__(self, other):
        return self.term.__and__(other)
    def __xor__(self, other):
        return self.term.__xor__(other)
    def __or__(self, other):
        return self.term.__or__(other)
    def __lshift__(self, other):
        return self.term.__lshift__(other)
    def __rshift__(self, other):
        return self.term.__rshift__(other)
    def __iadd__(self, other):
        return self.term.__iadd__(other)
    def __isub__(self, other):
        return self.term.__isub__(other)
    def __imul__(self, other):
        return self.term.__imul__(other)
    def __idiv__(self, other):
        return self.term.__idiv__(other)
    def __ifloordiv__(self, other):
        return self.term.__ifloordiv__(other)
    def __imod__(self, other):
        return self.term.__imod__(other)
    def __ipow__(self, other):
        return self.term.__ipow__(other)
    def __ilshift__(self, other):
        return self.term.__ilshift__(other)
    def __irshift__(self, other):
        return self.term.__irshift__(other)
    def __iand__(self, other):
        return self.term.__iand__(other)
    def __ixor__(self, other):
        return self.term.__ixor__(other)
    def __ior__(self, other):
        return self.term.__ior__(other)
    def __neg__(self):
        return self.term.__neg__()
    def __pos__(self):
        return self.term.__pos__()
    def __abs__(self):
        return self.term.__abs__()
    def __invert__(self):
        return self.term.__invert__()
    def __complex__(self):
        return self.term.__complex__()
    def __int__(self):
        return self.term.__int__()
    def __long__(self):
        return self.term.__long__()
    def __float__(self):
        return self.term.__float__()
    def __oct__(self):
        return self.term.__oct__()
    def __hex__(self):
        return self.term.__hex__()
    def __lt__(self, other):
        return self.term.__lt__(other)
    def __le__(self, other):
        return self.term.__le__(other)
    def __eq__(self, other):
        return self.term.__eq__(other)
    def __ne__(self, other):
        return self.term.__ne__(other)
    def __ge__(self, other):
        return self.term.__ge__(other)
    def __gt__(self, other):
        return self.term.__gt__(other)