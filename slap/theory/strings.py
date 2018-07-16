import logging
logger = logging.getLogger(__name__)
logging.basicConfig(level=logging.ERROR)

from slap.interface import AST, SMTLIB20, SMTLIB26

import slap.theory.core
import slap.theory.reals_ints

class String(slap.theory.core.Sort):
    def __init__(self, name, arg_sorts=[]):
        slap.theory.core.Sort.__init__(self, name, arg_sorts)

    def __add__(self, other):
        other = self.cast(other)
        return OPS["str.++"]([self, other])

    def __contains__(self, other):
        other = self.cast(other)
        return OPS["str.contains"]([self, other])

    def __le__(self, other):
        other = self.cast(other)
        return OPS["str.<="]([self, other])

    def __lt__(self, other):
        other = self.cast(other)
        return OPS["str.<"]([self, other])

    def startswith(self, other):
        other = self.cast(other)
        return OPS["str.prefixof"]([other, self])

    def endswith(self, other):
        other = self.cast(other)
        return OPS["str.suffixof"]([other, self])

    def cast(self, other):
        if isinstance(other, str):
            other = StringVal(other)
        elif not isinstance(other, String):
            raise TypeError("%s must be a String!" %other)
        return other

class StringFuncApp(slap.theory.core.FuncApp, String):
    def __init__(self, func, args):
        slap.theory.core.FuncApp.__init__(self, func, args)
        String.__init__(self, str(self))

String.app = StringFuncApp

class StringVal(slap.theory.core.SpecConstant, String):
    def __init__(self, val):
        slap.theory.core.SpecConstant.__init__(self, val)
        String.__init__(self, str(self))
    
    def cval(self, ctx):
        return ctx.StringVal(self.val)

class Concat(String): 
    def __init__(self):
        name = {
            AST: self.__class__.__name__,
            SMTLIB26: "str.++"
        }
        String.__init__(self, name, [String, String])

    def cval(self, ctx):
        return lambda *x: ctx.concat(*[y.cval(ctx) for y in x])


class Len(slap.theory.reals_ints.Int):
    def __init__(self):
        name = {
            AST: self.__class__.__name__,
            SMTLIB26: "str.len"
        }
        slap.theory.reals_ints.Int.__init__(self, name, [String])

    def cval(self, ctx):
        def f(x):
            x = x.cval(ctx)
            return ctx.length(x)
        return f

# Operator: check if first string contains second string.
class Contains(slap.theory.core.Bool):
    def __init__(self):
        name = {
            AST: self.__class__.__name__,
            SMTLIB26: "str.contains"
        }
        slap.theory.core.Bool.__init__(self, name, [String, String])

    def cval(self, ctx):
        def f(x, y):
            x = x.cval(ctx)
            y = y.cval(ctx)
            return ctx.contains(x, y)
        return f


# Operator: first string is a prefix of second string.
class PrefixOf(slap.theory.core.Bool):
    def __init__(self):
        name = {
            AST: self.__class__.__name__,
            SMTLIB26: "str.prefixof"
        }
        slap.theory.core.Bool.__init__(self, name, [String, String])


    def cval(self, ctx):
        def f(x, y):
            x = x.cval(ctx)
            y = y.cval(ctx)
            return ctx.prefixof(x, y)
        return f

# Operator: first string is a suffix of second one.
class SuffixOf(slap.theory.core.Bool):
    def __init__(self):
        name = {
            AST: self.__class__.__name__,
            SMTLIB26: "str.suffixof"
        }
        slap.theory.core.Bool.__init__(self, name, [String, String])

    def cval(self, ctx):
        def f(x, y):
            x = x.cval(ctx)
            y = y.cval(ctx)
            if isinstance(x, str) and isinstance(y, str):
                return x.endswith(y)
            return ctx.suffixof(x, y)
        return f


class StrLT(slap.theory.core.Bool):
    def __init__(self):
        name = {
            AST: self.__class__.__name__,
            SMTLIB26: "str.<"
        }
        slap.theory.core.Bool.__init__(self, name, String)

    def cval(self, ctx):
        return lambda *x: ctx.strlt([y.cval(ctx) for y in x])


class StrLE(slap.theory.core.Bool):
    def __init__(self):
        name = {
            AST: self.__class__.__name__,
            SMTLIB26: "str.<="
        }
        slap.theory.core.Bool.__init__(self, name, String)

    def cval(self, ctx):
        return lambda *x: ctx.strle([y.cval(ctx) for y in x])

class StrGT(slap.theory.core.Bool):
    def __init__(self):
        name = {
            AST: self.__class__.__name__,
            SMTLIB26: "str.>"
        }
        slap.theory.core.Bool.__init__(self, name, String)

    def cval(self, ctx):
        return lambda *x: ctx.strgt([y.cval(ctx) for y in x])


class StrGE(slap.theory.core.Bool):
    def __init__(self):
        name = {
            AST: self.__class__.__name__,
            SMTLIB26: "str.>="
        }
        slap.theory.core.Bool.__init__(self, name, String)

    def cval(self, ctx):
        return lambda *x: ctx.strge([y.cval(ctx) for y in x])

class IndexOf(slap.theory.reals_ints.Int):
    def __init__(self):
        name = {
            AST: self.__class__.__name__,
            SMTLIB26: "str.indexof"
        }
        slap.theory.reals_ints.Int.__init__(self, name, [String, String, slap.theory.reals_ints.Int])

    def cval(self, ctx):
        def f(s, sub, offset=slap.theory.reals_ints.IntVal(0)):
            s = s.cval(ctx)
            sub = sub.cval(ctx)
            offset = offset.cval(ctx)
            return ctx.indexof(s, sub, offset)
        return f

class SubStr(String):
    def __init__(self):
        name = {
            AST: self.__class__.__name__,
            SMTLIB26: "str.substr"
        }
        String.__init__(self, name, [String, slap.theory.reals_ints.Int, slap.theory.reals_ints.Int])

    def cval(self, ctx):
        def f(s, offset, length):
            s = s.cval(ctx)
            offset = offset.cval(ctx)
            length = length.cval(ctx)
            return ctx.extract(s, offset, length)
        return f

class StrAt(String):
    def __init__(self):
        name = {
            AST: self.__class__.__name__,
            SMTLIB26: "str.at"
        }
        String.__init__(self, name, [String, slap.theory.reals_ints.Int])

    def cval(self, ctx):
        def f(s, offset):
            s = s.cval(ctx)
            offset = offset.cval(ctx)
            return ctx.at(s, offset)
        return f

class StrReplace(String):
    def __init__(self):
        name = {
            AST: self.__class__.__name__,
            SMTLIB26: "str.replace"
        }
        String.__init__(self, name, [String, String, String])

    def cval(self, ctx):
        def f(s, src, dst):
            s = s.cval(ctx)
            src = src.cval(ctx)
            dst = dst.cval(ctx)
            return ctx.replace(s, src, dst)
        return f

class IntToStr(String):
    def __init__(self):
        name = {
            AST: self.__class__.__name__,
            SMTLIB26: "int.to.str"
        }
        String.__init__(self, name, [slap.theory.reals_ints.Int])

    def cval(self, ctx):
        def f(i):
            i = i.cval(ctx)
            return ctx.int_to_str(i)
        return f

OPS = {
    'str.++': Concat(),
    'str.len': Len(),
    'str.<': StrLT(),
    'str.<=': StrLE(),
    'str.>': StrGT(),
    'str.>=': StrGE(),
    'str.substr': SubStr(),
    'str.prefixof': PrefixOf(), 
    'str.suffixof': SuffixOf(),
    'str.contains': Contains(),
    'str.indexof': IndexOf(),
    'str.at': StrAt(),
    'str.replace': StrReplace(),
    'int.to.str': IntToStr()
}