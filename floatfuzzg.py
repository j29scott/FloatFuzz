#!/usr/bin/env python3

'''
The fuzzer tool that generates new problems.
'''

from slap.mk import *
from slap.interface.solver import solve
from slap.interface.printer import smtlib_string

def main():
    ast = [mk_set_logic("QF_FP")]

    x = mk_float("x", 11, 53)
    y = mk_float("y", 11, 53)

    rne = mk_fp_rne()
    c = mk_fp_add(rne, x, y)

    exp = mk_fp_eq(x, c)

    ast.append(mk_assert(exp))
    ast.append(mk_check_sat())
    ast.append(mk_get_model())

    print(smtlib_string(ast, [x,y]))

    res = solve(ast, [x,y])

    print(res['time'])
    print(res['model'])
    print(res['stdout'])

if __name__ == '__main__':
    main()
