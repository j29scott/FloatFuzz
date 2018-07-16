import logging
logger = logging.getLogger(__name__)
logging.basicConfig(level=logging.ERROR)

from string import whitespace
import tempfile as tmpf

import z3

import slap.interface.parser.ast as sast
import slap.interface.parser.parse as spar

from slap.theory.scope import *
from slap.theory.reals_ints import *
from slap.theory.strings import *
from slap.theory.core import *
from slap.theory.bitvectors import *
from slap.theory.floatingpoint import *

from slap.mk import OPS

ATOM_END = set('()"\'') | set(whitespace)

def get_sort(asort):
    if isinstance(asort, sast.Sort):
        e = asort.sname
        if asort.subsortlist is None or len(asort.subsortlist) == 0:
            if e.name == "Bool":
                return Bool
            elif e.name == "Int":
                return Int
            elif e.name == "String":
                return String
            elif e.name == "BitVec":
                return BitVec_n(int(e.indexes[0]))
            else:
                raise NotImplementedError("%s: Unsupported Sort!" % e)
        else:
            raise NotImplementedError("%s: parametric sort not supported!" % e)
    else:
        raise TypeError("%s : not a sort from a raw ast." % asort)


def sort_of(sort_instance):
    if isinstance(sort_instance, Int):
        return sast.Sort("Int",[])
    elif isinstance(sort_instance, Bool):
        return sast.Sort("Bool", [])
    elif isinstance(sort_instance, String):
        return sast.Sort("String", [])
    elif isinstance(sort_instance, FloatingPoint):
        return sast.Sort("_ FloatingPoint", [sort_instance.exp, sort_instance.sig])
    else:
        raise TypeError("%s is not a supported sort." % str(sort_instance))

class Parser:
    #  Initilialize the 'parser' with the raw ast coming from the slapp parser
    def __init__(self, raw_ast, from_file=None):
        if from_file is None:
            self.raw_ast = raw_ast
        else:
            self.raw_ast = spar.parser.parse(from_file.read())
        self.functions = {}
        self.defines = {}
        self.scoped_vars = [{}]
        self.AST = []
        self.analyze()

    def get_func(self, name, args):
        if name in self.defines:
            return self.defines[name](args)
        else:
            return self.functions[name](args)

    # Main conversion: converts a term of smtlib of the raw ast into a new format
    def convert(self, term):
        # It's a function application
        if isinstance(term, sast.FApp):
            # The function 'name' should be a qualified identifier. Sanity check, and unwrapping.
            if isinstance(term.function, sast.QIdent):
                # Function app might be an operator
                funapp = self.get_op(term.function, [self.convert(a) for a in term.args])
                if funapp is None:
                    # Otherwise, it should be a used defined function.
                    fname = str(term.function.qident.name)
                    funapp = self.get_func(fname, [self.convert(a) for a in term.args])
                    if funapp is None:
                        logger.info("Function application term %s not recognized." % term)
                        raise NotImplementedError("Calling non implemented function.")
                else:
                    return funapp

        # Constants
        elif isinstance(term, sast.Constant):
            if isinstance(term.value, bool): #bool is an int: this must come first
                return BoolVal(term.value)
            elif isinstance(term.value, int):
                return IntVal(term.value)
            elif isinstance(term.value, str):
                return StringVal(term.value[1:-1])
            else:
                raise ValueError("Unsupported special constant type %s" %type(term.value))

        # Qualified identifiers
        elif isinstance(term, sast.QIdent):
            return self.convert(term.qident)

        elif isinstance(term, sast.Identifier):
            # If it's a base identifier, return the name.
            if term.indexes is None or len(term.indexes) == 0:
                name = str(term.name)
                for scope in self.scoped_vars:
                    if name in scope:
                        return scope[name]
                if name in self.functions:
                    func = self.functions[name]
                    return func
                elif name in self.defines:
                    return self.defines[name]
                else:
                    raise ValueError("Unknown identifier %s." % term)
            else:
                if term.name.startswith("bv"):
                    val = int(term.name[2:])
                    size = term.indexes[0]
                    return BitVecVal(val, size)
                raise NotImplementedError("Indexed sorts not implemented.")
        
        elif isinstance(term, sast.Let):
            self.scoped_vars = [{}] + self.scoped_vars
            bindings = []
            for bind in term.bindings:
                b = Binding(bind.var, self.convert(bind.expr))
                bindings.append(b)
                self.scoped_vars[0][b.name] = b
            return Let(bindings, self.convert(term.term))
        else:
            raise ValueError("Unknown term %s (%s)." % (term, term.__class__))

    def declare_const(self, args):
        constname = args[0]
        const_sort = args[1]
        self.add_fun(constname, get_sort(const_sort), [])

    def declare_function(self, prms):
        fname = prms[0]
        fsort = get_sort(prms[2])
        fargs_sorts = [get_sort(x) for x in prms[1]]
        self.add_fun(fname, fsort, fargs_sorts)

    def define_function(self, cargs):
        if isinstance(cargs[0], sast.FunctionDef):
            fname = cargs[0].name
            fsort = get_sort(cargs[0].args)
            expr = self.convert(cargs[0].term)
            if len(cargs[0].args) == 0:
                self.defines[fname] = expr
            else:
                raise NotImplementedError("define-function for non-constant")

    def add_fun(self, fname, fsort, fargs_sorts):
        if fname in self.functions:
            if fsort(fname, fargs_sorts) == self.functions[fname]:
                pass
            else:
                raise ValueError("Cannot define two functions with same name and different values.")
        else:
            self.functions[fname] = fsort(fname, fargs_sorts)


    def analyze(self):
        self.AST = []

        for command in self.raw_ast:
            cargs = command.cargs
            cname = command.cname
            if cname == "declare-fun":
                self.declare_function(cargs)
            elif cname == "define-fun":
                self.define_function(cargs)
            elif cname == "declare-const":
                self.declare_const(cargs)
            elif cname == "assert":
                self.AST.append(self.convert(cargs[0]))
            else:
                self.AST.append(command)

    def get_op(self, qualif_ident, args):
        if isinstance(qualif_ident, sast.QIdent):
            op = qualif_ident.qident

            if op.indexes is not None and len(op.indexes) > 0:
                args = op.indexes + args

            if op.name in OPS:
                return OPS[op.name](args)
            elif op.name in self.functions:
                return self.functions[op.name](args)
            else:
                raise ValueError("Could not find \"%s\"!" % op)
        else:
            raise ValueError("OP Must be a Qualified Identifier!")
