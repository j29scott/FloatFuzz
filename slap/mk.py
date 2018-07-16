import logging
logger = logging.getLogger(__name__)
logging.basicConfig(level=logging.ERROR)

import slap.theory.core
import slap.theory.bitvectors
import slap.theory.reals_ints
import slap.theory.strings
import slap.theory.floatingpoint

from slap.interface.parser.ast import Command

OPS = {
    **slap.theory.core.OPS, 
    **slap.theory.bitvectors.OPS, 
    **slap.theory.reals_ints.OPS, 
    **slap.theory.strings.OPS,
    **slap.theory.floatingpoint.OPS
}

# AST

def mk_set_logic(logic):
    return Command("set-logic", [logic])

def mk_get_model():
    return Command("get-model", [])

def mk_check_sat():
    return Command("check-sat", [])

def mk_assert(expr):
    return Command("assert", [expr])

def mk_push():
    return Command("push", [1])

def mk_pop():
    return Command("pop", [1])

def mk_exit():
    return Command("exit", [])


# Constructors
def mk_val(s):
    if isinstance(s, str):
        return slap.theory.strings.StringVal(s)
    elif isinstance(s, bool):
        return slap.theory.core.BoolVal(s)
    elif isinstance(s, int):
        return slap.theory.reals_ints.IntVal(s)
    else:
        raise NotImplementedError("%s Value Support Not Implemented!" %(type(s)))

def mk_bool(s):
    return slap.theory.core.Bool(s, [])

def mk_bv(n, s):
    return slap.theory.bitvectors.BitVec(n, s, [])

def mk_int(s):
    return slap.theory.reals_ints.Int(s, [])

def mk_string(s):
    return slap.theory.strings.String(s, [])

def mk_float(n, exp, sig):
    return slap.theory.floatingpoint.FloatingPoint(n, exp, sig, [])


## Operators

# BV
def mk_bvadd(*l):
    return OPS["bvadd"](l)

def mk_bvsub(*l):
    return OPS["bvsub"](l)

def mk_bvmult(*l):
    return OPS["bvmul"](l)

def mk_bvlt(*l):
    return OPS["bvult"](l)

def mk_bvneg(*l):
    return OPS["bvneg"](l)

def mk_bvshl(*l):
    return OPS["bvshl"](l)

def mk_bvshr(*l):
    return OPS["bvshr"](l)

# Core
def mk_not(b):
    return OPS["not"]([b])

def mk_and(*l):
    return OPS["and"](l)

def mk_or(*l):
    return OPS["or"](l)

def mk_eq(a, b):
    return OPS["="]([a, b])

def mk_ite(cond, a, b):
    return OPS["ite"]([cond, a, b])

# Int
def mk_int_add(*l):
    return OPS["+"](l)

def mk_int_sub(*l):
    return OPS["-"](l)

def mk_int_mult(*l):
    return OPS["*"](l)

def mk_int_leq(*l):
    return OPS["<="](l)

def mk_int_lt(*l):
    return OPS["<"](l)

def mk_int_geq(*l):
    return OPS[">="](l)

def mk_int_gt(*l):
    return OPS[">"](l)

# Strings

def mk_concat(*l):
    return OPS["str.++"](l)

def mk_len(l):
    return OPS["str.len"]([l])

def mk_strlt(a, b):
    return OPS["str.<"]([a,b])

def mk_strle(a, b):
    return OPS["str.<="]([a,b])

def mk_substr(s, offset, length):
    return OPS["str.substr"]([s, offset, length])

def mk_prefixof(a, b):
    return OPS["str.prefixof"]([a,b])

def mk_suffixof(a, b):
    return OPS["str.suffixof"]([a,b])

def mk_contains(a, b):
    return OPS["str.contains"]([a,b])

def mk_indexof(s, offset, length):
    return OPS["str.indexof"]([s, offset, length])

# Floats

def mk_fp_abs(*x):
    return OPS['fp.abs'](x)

def mk_fp_neg(*x):
    return OPS['fp.neg'](x)

def mk_fp_add(mode, x, y):
    return OPS['fp.add']([mode, x, y])

def mk_fp_sub(*x):
    return OPS['fp.sub'](x)

def mk_fp_mul(*x):
    return OPS['fp.mul'](x)

def mk_fp_div(*x):
    return OPS['fp.div'](x)

def mk_fp_fma(*x):
    return OPS['fp.fma'](x)

def mk_fp_rem(*x):
    return OPS['fp.rem'](x)

def mk_fp_sqrt(*x):
    return OPS['fp.sqrt'](x)

def mk_fp_roundToIntegral(*x):
    return OPS['fp.roundToIntegral'](x)

def mk_fp_min(*x):
    return OPS['fp.min'](x)

def mk_fp_max(*x):
    return OPS['fp.max'](x)

def mk_fp_leq(*x):
    return OPS['fp.leq'](x)

def mk_fp_lt(*x):
    return OPS['fp.lt'](x)

def mk_fp_geq(*x):
    return OPS['fp.geq'](x)

def mk_fp_gt(*x):
    return OPS['fp.gt'](x)

def mk_fp_eq(*x):
    return OPS['fp.eq'](x)

def mk_fp_isNormal(*x):
    return OPS['fp.isNormal'](x)

def mk_fp_isSubnormal(*x):
    return OPS['fp.isSubnormal'](x)

def mk_fp_isZero(*x):
    return OPS['fp.isZero'](x)

def mk_fp_isInfinite(*x):
    return OPS['fp.isInfinite'](x)

def mk_fp_isNan(*x):
    return OPS['fp.isNan'](x)

def mk_fp_isNegative(*x):
    return OPS['fp.isNegative'](x)

def mk_fp_isPositive(*x):
    return OPS['fp.isPositive'](x)

def mk_fp_rne():
    return slap.theory.floatingpoint.RoundingMode("RNE")

def mk_fp_rna():
    return slap.theory.floatingpoint.RoundingMode("RNA")

def mk_fp_rtp():
    return slap.theory.floatingpoint.RoundingMode("RTP")

def mk_fp_rtn():
    return slap.theory.floatingpoint.RoundingMode("RTN")

def mk_fp_rtz():
    return slap.theory.floatingpoint.RoundingMode("RTZ")
