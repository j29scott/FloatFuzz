import logging
logger = logging.getLogger(__name__)
logging.basicConfig(level=logging.ERROR)

from functools import reduce

from operator import add, sub, mul, lt, le, ge, gt, eq, xor, neg, inv

from z3 import z3

from slap.interface.parser.ast import Command

from slap.theory.scope import Let
from slap.theory.core import Bool
from slap.theory.reals_ints import Int
from slap.theory.strings import String
from slap.theory.bitvectors import BitVec
from slap.theory.core import Sort

from slap.interface.context import Context

class Z3Context(Context):
    def __init__(self, *args, **kw):
        Context.__init__(self, *args, **kw)
        self.solver = z3.Solver()

    def __getitem__(self, key):
        if not isinstance(key, Sort) and key in self.storage:
            return self.storage[key]
        elif isinstance(key, Sort):
            if key.name in self.storage:
                return self.storage[key.name]
            val = self.new_from_sort(key)
            self.storage[key.name] = val
            return val
        else:
            raise ValueError("%s not found! %s. %s." %(key, type(key), self.storage))

    def new_from_sort(self, key):
        if isinstance(key, Bool):
            key = key.name
            val = z3.Bool(key)
            return val
        elif isinstance(key, Int):
            key = key.name
            val = z3.Int(key)
            return val
        elif isinstance(key, String):
            key = key.name
            val = z3.String(key)
            return val
        elif isinstance(key, BitVec):
            name = key.name
            size = key.size
            val = z3.BitVec(name, size)
            return val
        raise TypeError("%s not supported!" %type(key))

    def s_assert(self, expr):
        self.solver.assert_exprs(expr.cval(self))

    def s_check(self):
        res = self.solver.check()
        return res

    def s_model(self):
        try:
            m = self.solver.model()
            return self.process_model(m)
        except z3.Z3Exception:
            return {}

    def s_push(self):
        self.solver.push()

    def s_pop(self):
        self.solver.pop()

    def s_reset(self):
        self.solver.reset()

    def solve(self, AST):
        outputs = []
        self.s_reset()
        for node in AST:
            if isinstance(node, Sort):
                self.s_assert(node)
            elif isinstance(node, Let):
                self.s_assert(node.term)
            elif isinstance(node, Command):
                if node.cname == "push":
                    self.s_push()
                elif node.cname == "pop":
                    self.s_pop()
                elif node.cname == "check-sat":
                    logger.info("\n-------")
                    outputs.append(self.s_check())
                    logger.info("Check: %s" % outputs[-1])
                elif node.cname == "get-model":
                    outputs.append(self.s_model())
                    logger.info("Model: %s" % outputs[-1])
            else:
                raise ValueError("Command %s not supported!" %node)
        
        return outputs

    def process_model(self, z3_model):
        m = {}
        for v in z3_model:
            m[v.name()] = self.get_py_value(z3_model.get_interp(v))
        return m

    def get_py_value(self, assignment):
        if z3.is_ast(assignment):
            if z3.is_int_value(assignment):
                return assignment.as_long()
            if z3.is_bool(assignment):
                return z3.is_true(assignment)
            if z3.is_string_value(assignment):
                try:
                    val = assignment.as_string()[1:-1]  # remove quotes
                    val = val.replace("\\x00", "")
                    return str(val)
                # Z3 throws encoding errors. It can't decode its own solution..
                # TODO find a better fix.
                except UnicodeDecodeError:
                    val = assignment.as_ast()
                    return repr(val)
            raise ValueError("Unsupported Z3 type! %s" % type(assignment))
        
        return assignment

    BoolVal = lambda self, x : z3.BoolVal(x)
    StringVal = lambda self, x : z3.StringVal(x)
    IntVal = lambda self, x : z3.IntVal(x)
    BitVecVal = lambda self, val, size : z3.BitVecVal(val, size)

    And = lambda self, *x : z3.And(x)
    Or = lambda self, *x : z3.Or(x)
    Xor = lambda self, *x : reduce(xor, x)
    Implies = lambda self, x, y : z3.Implies(x, y)
    Distinct = lambda self, x, y : z3.Distinct(x, y)

    def Eq(self, x, y):
        # x = z3.String("x")
        # x == "test" #throws an error. This is a workaround for now.
        x = z3.StringVal(x) if isinstance(x,str) else x
        y = z3.StringVal(y) if isinstance(y,str) else y
        return eq(x,y)

    Not = lambda self, x : z3.Not(x)

    If = lambda self, *x : z3.If(*x)

    add = lambda self, *x : reduce(add, x)
    sub = lambda self, *x : reduce(sub, x) if len(x) > 1 else -x[0]
    mul = lambda self, *x : reduce(mul, x)
    
    lt = lambda self, *x : reduce(lt, x)
    le = lambda self, *x : reduce(le, x)
    gt = lambda self, *x : reduce(gt, x)
    ge = lambda self, *x : reduce(ge, x)

    concat = lambda self, *x : reduce(add, x)
    length = lambda self, x : z3.Length(x)
    contains = lambda self, x, y : z3.Contains(x, y)
    indexof = lambda self, x, y, z=0 : z3.IndexOf(x, y, z)
    extract = lambda self, x, y, z : z3.Extract(x, y, z)

    bvadd = add
    bvsub = sub
    bvmul = mul
    bvxor = Xor
    bvneg = lambda self, x : neg(x)
    bvnot = lambda self, x : inv(x)
    bvconcat = lambda self, *x : z3.Concat(*x)
    bvlshr = lambda self, x, y : z3.LShR(x, y)
    bvlshl = lambda self, x, y : z3.LShL(x, y)
    bvuge = lambda self, x, y : z3.UGE(x, y)
    bvurem = lambda self, x, y : z3.URem(x, y)

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