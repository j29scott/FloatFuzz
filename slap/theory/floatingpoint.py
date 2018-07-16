from slap.interface import AST, SMTLIB20, SMTLIB26

import slap.theory.core
import slap.theory.reals_ints

class FloatingPoint(slap.theory.core.Sort):
    def __init__(self, name, exp, sig, arg_sorts=[]):
        slap.theory.core.Sort.__init__(self, name, arg_sorts)
        self.exp = exp
        self.sig = sig

class FloatingPointFuncApp(slap.theory.core.FuncApp, FloatingPoint):
    def __init__(self, func, args):
        slap.theory.core.FuncApp.__init__(self, func, args)
        #TODO how to calculate exp and sig?!
        FloatingPoint.__init__(self, str(self), 0, 0)

FloatingPoint.app = FloatingPointFuncApp

class FloatingPointVal(slap.theory.core.SpecConstant, FloatingPoint):
    def __init__(self, val):
        slap.theory.core.SpecConstant.__init__(self, val)
        #TODO how to calculate exp and sig?!
        FloatingPoint.__init__(self, str(self), 0, 0)

    def cval(self, ctx):
        return ctx.FloatingPointVal(self.val)

class RoundingMode(slap.theory.core.SpecConstant):
    def __init__(self, val):
        slap.theory.core.SpecConstant.__init__(self, val)

    def to_string(self, language):
        return self.val

    def __str__(self):
        return self.val

    def cval(self, ctx):
        if self.val == "RNE":
            return ctx.RNE()
        elif self.val == "RNA":
            return ctx.RNA()
        elif self.val == "RTP":
            return ctx.RTP()
        elif self.val == "RTN":
            return ctx.RTN()
        elif self.val == "RTZ":
            return ctx.RTZ()

class FloatingPointAbs(FloatingPoint):
    def __init__(self):
        name = {
            AST: "FPAbs",
            SMTLIB26: "fp.abs"
        }
        # TODO how to decide exp and sig?!?
        FloatingPoint.__init__(self, name, 0, 0, [FloatingPoint])

    def cval(self, ctx):
        return lambda *x: ctx.FPAbs([y.cval(ctx) for y in x])

class FloatingPointNeg(FloatingPoint):
    def __init__(self):
        name = {
            AST: "FPNeg",
            SMTLIB26: "fp.neg"
        }
        # TODO how to decide exp and sig?!?
        FloatingPoint.__init__(self, name, 0, 0, [FloatingPoint])

    def cval(self, ctx):
        return lambda *x: ctx.FPNeg([y.cval(ctx) for y in x])

class FloatingPointAdd(FloatingPoint):
    def __init__(self):
        name = {
            AST: "FPAdd",
            SMTLIB26: "fp.add"
        }
        # TODO how to decide exp and sig?!
        FloatingPoint.__init__(self, name, 0, 0, [RoundingMode, FloatingPoint, FloatingPoint])

    def cval(self, ctx):
        return lambda *x: ctx.FPAdd([y.cval(ctx) for y in x])

class FloatingPointSub(FloatingPoint):
    def __init__(self):
        name = {
            AST: "FPSub",
            SMTLIB26: "fp.sub"
        }
        # TODO how to decide exp and sig?!
        FloatingPoint.__init__(self, name, 0, 0, [FloatingPoint,FloatingPoint])

    def cval(self, ctx):
        return lambda *x: ctx.FPSub([y.cval(ctx) for y in x])

class FloatingPointMul(FloatingPoint):
    def __init__(self):
        name = {
            AST: "FPMul",
            SMTLIB26: "fp.mul"
        }
        # TODO how to decide exp and sig?!
        FloatingPoint.__init__(self, name, 0, 0, [FloatingPoint,FloatingPoint])

    def cval(self, ctx):
        return lambda *x: ctx.FPMul([y.cval(ctx) for y in x])

class FloatingPointDiv(FloatingPoint):
    def __init__(self):
        name = {
            AST: "FPDiv",
            SMTLIB26: "fp.div"
        }
        # TODO how to decide exp and sig?!
        FloatingPoint.__init__(self, name, 0, 0, [FloatingPoint,FloatingPoint])

    def cval(self, ctx):
        return lambda *x: ctx.FPDiv([y.cval(ctx) for y in x])

class FloatingPointFMA(FloatingPoint):
    def __init__(self):
        name = {
            AST: "FPFMA",
            SMTLIB26: "fp.fma"
        }
        # TODO how to decide exp and sig?!
        FloatingPoint.__init__(self, name, 0, 0, [FloatingPoint,FloatingPoint,FloatingPoint])

    def cval(self, ctx):
        return lambda *x: ctx.FPFMA([y.cval(ctx) for y in x])

class FloatingPointRem(FloatingPoint):
    def __init__(self):
        name = {
            AST: "FPRem",
            SMTLIB26: "fp.rem"
        }
        # TODO how to decide exp and sig?!
        FloatingPoint.__init__(self, name, 0, 0, [FloatingPoint,FloatingPoint])

    def cval(self, ctx):
        return lambda *x: ctx.FPRem([y.cval(ctx) for y in x])

class FloatingPointSqrt(FloatingPoint):
    def __init__(self):
        name = {
            AST: "FPSqrt",
            SMTLIB26: "fp.sqrt"
        }
        # TODO how to decide exp and sig?!?
        FloatingPoint.__init__(self, name, 0, 0, [FloatingPoint])

    def cval(self, ctx):
        return lambda *x: ctx.FPSqrt([y.cval(ctx) for y in x])

class FloatingPointRoundToIntegral(FloatingPoint):
    def __init__(self):
        name = {
            AST: "FPRoundToIntegral",
            SMTLIB26: "fp.roundToIntegral"
        }
        # TODO how to decide exp and sig?!?
        FloatingPoint.__init__(self, name, 0, 0, [FloatingPoint])

    def cval(self, ctx):
        return lambda *x: ctx.FPRoundToIntegral([y.cval(ctx) for y in x])

class FloatingPointMin(FloatingPoint):
    def __init__(self):
        name = {
            AST: "FPMin",
            SMTLIB26: "fp.min"
        }
        # TODO how to decide exp and sig?!
        FloatingPoint.__init__(self, name, 0, 0, [FloatingPoint,FloatingPoint])

    def cval(self, ctx):
        return lambda *x: ctx.FPMin([y.cval(ctx) for y in x])

class FloatingPointMax(FloatingPoint):
    def __init__(self):
        name = {
            AST: "FPMax",
            SMTLIB26: "fp.max"
        }
        # TODO how to decide exp and sig?!
        FloatingPoint.__init__(self, name, 0, 0, [FloatingPoint,FloatingPoint])

    def cval(self, ctx):
        return lambda *x: ctx.FPMax([y.cval(ctx) for y in x])


class FloatingPointLEQ(slap.theory.core.Bool):
    def __init__(self):
        name = {
            AST: "FPLEQ",
            SMTLIB26: "fp.leq"
        }
        slap.theory.core.Bool.__init__(self, name, [FloatingPoint,FloatingPoint])


    def cval(self, ctx):
        return lambda *x: ctx.FPLEQ([y.cval(ctx) for y in x])

class FloatingPointLT(slap.theory.core.Bool):
    def __init__(self):
        name = {
            AST: "FPLT",
            SMTLIB26: "fp.lt"
        }
        slap.theory.core.Bool.__init__(self, name, [FloatingPoint,FloatingPoint])

    def cval(self, ctx):
        return lambda *x: ctx.FPLT([y.cval(ctx) for y in x])

class FloatingPointGEQ(slap.theory.core.Bool):
    def __init__(self):
        name = {
            AST: "FPGEQ",
            SMTLIB26: "fp.geq"
        }
        slap.theory.core.Bool.__init__(self, name, [FloatingPoint,FloatingPoint])


    def cval(self, ctx):
        return lambda *x: ctx.FPGEQ([y.cval(ctx) for y in x])

class FloatingPointGT(slap.theory.core.Bool):
    def __init__(self):
        name = {
            AST: "FPGT",
            SMTLIB26: "fp.gt"
        }
        slap.theory.core.Bool.__init__(self, name, [FloatingPoint,FloatingPoint])

    def cval(self, ctx):
        return lambda *x: ctx.FPGT([y.cval(ctx) for y in x])

class FloatingPointEQ(slap.theory.core.Bool):
    def __init__(self):
        name = {
            AST: "FPEQ",
            SMTLIB26: "fp.eq"
        }
        slap.theory.core.Bool.__init__(self, name, [FloatingPoint,FloatingPoint])

    def cval(self, ctx):
        return lambda *x: ctx.FPEQ([y.cval(ctx) for y in x])

class FloatingPointIsNormal(slap.theory.core.Bool):
    def __init__(self):
        name = {
            AST: "FPIsNormal",
            SMTLIB26: "fp.isNormal"
        }
        slap.theory.core.Bool.__init__(self, name, [FloatingPoint])

    def cval(self, ctx):
        return lambda *x: ctx.FPIsNormal([y.cval(ctx) for y in x])

class FloatingPointIsSubNormal(slap.theory.core.Bool):
    def __init__(self):
        name = {
            AST: "FPIsSubNormal",
            SMTLIB26: "fp.isSubnormal"
        }
        slap.theory.core.Bool.__init__(self, name, [FloatingPoint])

    def cval(self, ctx):
        return lambda *x: ctx.FPIsSubNormal([y.cval(ctx) for y in x])

class FloatingPointIsZero(slap.theory.core.Bool):
    def __init__(self):
        name = {
            AST: "FPIsZero",
            SMTLIB26: "fp.isZero"
        }
        slap.theory.core.Bool.__init__(self, name, [FloatingPoint])

    def cval(self, ctx):
        return lambda *x: ctx.FPIsZero([y.cval(ctx) for y in x])

class FloatingPointIsInfinite(slap.theory.core.Bool):
    def __init__(self):
        name = {
            AST: "FPIsInfinite",
            SMTLIB26: "fp.isInfinite"
        }
        slap.theory.core.Bool.__init__(self, name, [FloatingPoint])

    def cval(self, ctx):
        return lambda *x: ctx.FPIsInfinite([y.cval(ctx) for y in x])

class FloatingPointIsNan(slap.theory.core.Bool):
    def __init__(self):
        name = {
            AST: "FPIsNan",
            SMTLIB26: "fp.isNaN"
        }
        slap.theory.core.Bool.__init__(self, name, [FloatingPoint])

    def cval(self, ctx):
        return lambda *x: ctx.FPIsNan([y.cval(ctx) for y in x])

class FloatingPointIsNegative(slap.theory.core.Bool):
    def __init__(self):
        name = {
            AST: "FPIsNegative",
            SMTLIB26: "fp.isNegative"
        }
        slap.theory.core.Bool.__init__(self, name, [FloatingPoint])

    def cval(self, ctx):
        return lambda *x: ctx.FPIsNegative([y.cval(ctx) for y in x])

class FloatingPointIsPositive(slap.theory.core.Bool):
    def __init__(self):
        name = {
            AST: "FPIsPositive",
            SMTLIB26: "fp.isPositive"
        }
        slap.theory.core.Bool.__init__(self, name, [FloatingPoint])

    def cval(self, ctx):
        return lambda *x: ctx.FPIsPositive([y.cval(ctx) for y in x])


OPS = {
    'fp.abs' 			: FloatingPointAbs(),
    'fp.neg' 			: FloatingPointNeg(),
    'fp.add' 			: FloatingPointAdd(),
    'fp.sub' 			: FloatingPointSub(),
    'fp.mul' 			: FloatingPointMul(),
    'fp.div'			: FloatingPointDiv(),
    'fp.fma' 			: FloatingPointFMA(),
    'fp.rem'			: FloatingPointRem(),
    'fp.sqrt'			: FloatingPointSqrt(),
    'fp.roundToIntegral': FloatingPointRoundToIntegral(),
    'fp.min'			: FloatingPointMin(),
    'fp.max'			: FloatingPointMax(),
    'fp.leq'			: FloatingPointLEQ(),
    'fp.lt'				: FloatingPointLT(),
    'fp.geq'			: FloatingPointGEQ(),
    'fp.gt'				: FloatingPointGT(),
    'fp.eq'				: FloatingPointEQ(),
    'fp.isNormal'		: FloatingPointIsNormal(),
    'fp.isSubnormal'	: FloatingPointIsSubNormal(),
    'fp.isZero'			: FloatingPointIsZero(),
    'fp.isInfinite'		: FloatingPointIsInfinite(),
    'fp.isNan'			: FloatingPointIsNan(),
    'fp.isNegative'		: FloatingPointIsNegative(),
    'fp.isPositive'		: FloatingPointIsPositive()
}
