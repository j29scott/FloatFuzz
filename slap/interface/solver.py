import sys
import logging
sys.path.append('../../../')
import Settings
logger = logging.getLogger(__name__)
logging.basicConfig(level=logging.ERROR)

import subprocess
import time

import slap.interface.parser.ast as sast
import slap.interface.parser.parse as sp
from slap.interface.parse import tmpf 
from slap.interface.printer import smtlib_string

# Format: for each solver, the name of the executable and the options.
SOLVERS = {
    'z3': ('z3', '-T:600 -smt2'),
	'z3': ('z3', '-T:' + str(Settings.SolverTimeout) + ' -smt2'),
    'z3online': ('z3', '-in'),
    'cvc4': ('cvc4', '')
}

def solve(ast, funcs, solver='z3'):
    '''
    @:return Solves a problem composed of different constraints and definitions, and returns a
    dictionary with keys 'sat' to a boolean, 'model' to the model.
    @:param ast: a slap AST
    @:param solver: Optional, a string that has to be a key of SOLVERS, By default, using z3.
    @:param verbose: Optional, set to true to get additional messages for debugging.
    '''

    get_model = any([command.cname == "get-model" for command in ast if isinstance(command, sast.Command)])

    # Printing SMTLIBv26 format to a temporary file.
    f = tmpf.NamedTemporaryFile(delete=False)
    tmp_filename = f.name
    smtlib = smtlib_string(ast, funcs)

    with open(tmp_filename, "w") as f:
        f.write(smtlib)

    f2 = tmpf.NamedTemporaryFile(delete=False)

    # Calling solver
    start_time = time.time()
    subprocess.call([SOLVERS[solver][0], SOLVERS[solver][1], tmp_filename], stdout=f2)
    end_time = time.time()
    total_time = end_time-start_time

    with open(f2.name) as f2name:
        out = f2name.read()
        logger.info("\n[solve] Peeking into the solver ouput...")
        logger.info(out)
        ast = sp.parser.parse(out)

    if get_model:
        if "sat" in ast:
            # Flattened list of commands
            models = [command for models in
                      [x.model for x in ast if isinstance(x, sast.Model)] for command in models]

            # Extract assignment out of commands
            assignments = [(x.cargs[0].name, x.cargs[0].term) for x in models
                           if isinstance(x, sast.Command) and x.cname == "define-fun"]

            return {'time': total_time, 'stdout': out, 'sat': True, 'model': assignments}
        else:
            return {'time': total_time, 'stdout': out, 'sat': False, 'model': []}
    else:
        return {'time': total_time, 'stdout': out, 'sat': ("sat" == ast or "sat" in ast), 'model' : []}

