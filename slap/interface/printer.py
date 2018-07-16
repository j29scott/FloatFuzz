import logging
logger = logging.getLogger(__name__)
logging.basicConfig(level=logging.ERROR)

import slap.interface.parser.ast as sast
import slap.interface.parse as sp

from slap.theory.core import BoolFuncApp, Sort
from slap.theory.scope import Let

from slap.interface.context import Context

def smtlib_string(ast : list, funcs):
    funcs = [decl_const_or_fun(definition) for definition in funcs]
    new_ast = []
    before_asserts = True
    for i in range(len(ast)):
        c = ast[i]
        if isinstance(c, BoolFuncApp) or (isinstance(c, Let) and isinstance(c.term, BoolFuncApp)):
            if before_asserts:
                before_asserts = False
                new_ast += funcs
            new_ast.append(sast.Command("assert", [c]))
        elif isinstance(c, sast.Command) and c.cname == "assert":
            if before_asserts:
                before_asserts = False
                new_ast += funcs
            new_ast.append(c)
        else:
            new_ast.append(c)
    smtlib = "\n".join([str(command) for command in new_ast])
    logger.info("\n"+smtlib)
    return smtlib

def decl_const_or_fun(definition):
    if isinstance(definition, Sort):
        fargs_sorts = definition.arg_sorts
        if len(fargs_sorts) == 0:
            return sast.Command("declare-const", [definition.name, sp.sort_of(definition)])
        else:
            return sast.Command("declare-fun", [definition.name, [sp.sort_of(x) for x in fargs_sorts], sp.sort_of(definition)])
    else:
        logger.error("decl_constant_or_fun called on %s" % str(definition))
        raise TypeError("%s is not supported." % str(definition))
