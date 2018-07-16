import logging
logger = logging.getLogger(__name__)
logging.basicConfig(level=logging.ERROR)

import ply.lex as plex

reserved = {
    'assert': 'ASSERT',
    'check-sat': 'CHKSAT',
    'check-sat-assuming': 'CHKSATASSUMING',
    'declare-const': 'DECLCONST',
    'declare-datatype': 'DECLDATATYPE',
    'declare-datatypes': 'DECLDATATYPES',
    'declare-fun': 'DECLFUN',
    'declare-sort': 'DECLSORT',
    'define-fun': 'DEFFUN',
    'define-fun-rec': 'DEFFUNREC',
    'define-funs-rec': 'DEFFUNSREC',
    'define-sort': 'DEFSORT',
    'echo': 'ECHO',
    'exit': 'EXIT',
    'get-assertions': 'GETASSERTIONS',
    'get-assignment': 'GETASSIGNMENT',
    'get-info': 'GETINF',
    'get-model': 'GETMOD',
    'get-option': 'GETOPT',
    'get-proof': 'GETPRF',
    'get-unsat-assumptions': 'GETUNSATASSUMPTS',
    'get-unsat-core': 'GETUNSATCORE',
    'get-value': 'GETVAL',
    'pop': 'POP',
    'push': 'PUSH',
    'reset': 'RESET',
    'reset-assertions': 'RESETASSERTIONS',
    'set-info': 'SETINFO',
    'set-option': 'SETOPT',
    'set-logic': 'SETLOGIC',
    'unsat': 'UNSAT',
    'sat': 'SAT',
    'error': 'ERROR',
    'model': 'MODEL',
    '_': 'UNDERSCORE',
    'let': 'LET',
    'match': 'MATCH',
    'exists': 'EXISTS',
    'forall': 'FORALL',
    'as': 'AS',
    'string': 'STRING',
}

tokens = [
    'COMMENT',
    'SIMPLE_SYMBOL',
    'QUOTED_SYMBOL',
    'STRING_LITERAL',
    'NUMBER',
    'RPAR',
    'LPAR',
    'PAR',
    'EXCLMARK',
    'COLON',
    "BOOL"
] + list(reserved.values())

t_COLON = r':'
t_STRING_LITERAL = r'"[^"]*"'
t_QUOTED_SYMBOL = r'\|[\s\S]*\|' #Include newlines
t_PAR = r'par'
t_EXCLMARK = r'\!'
t_LPAR = r'\('
t_RPAR = r'\)'
t_ignore = ' \t'

def t_BOOL(t):
    r'(true)|(false)'
    if t.value == "true":
        t.value = True
    elif t.value == "false":
        t.value = False
    return t

def t_NUMBER(t):
    r'\d+\.*\d*'
    try:
        t.value = int(t.value)
    except ValueError:
        t.value = float(t.value)
    return t


def t_SIMPLE_SYMBOL(t):
    r'[a-zA-Z_=<>/@\~\!\$\%\^\&\*\-\+\.\?][a-zA-Z_=<>/@:0-9\~\!\$\%\^\&\*\-\+\.\?]*'
    t.type = reserved.get(t.value, 'SIMPLE_SYMBOL')
    return t


def t_newline(t):
    r'\n+'
    t.lexer.lineno += len(t.value)


def t_ignore_COMMENT(t):
    r'\;.*'
    pass
    # No return value. Token discarded


def t_error(t):
    logger.warning("Illegal character '%s'" % t.value[0])
    t.lexer.skip(1)

# Build the lexer
lexer = plex.lex()
