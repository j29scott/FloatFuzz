__smtlib26_options_ = {
    "diagnostic-output-channel": str,
    "global-declarations": bool,
    "interactive-mode": bool,
    "print-success": bool,
    "produce-assertions": bool,
    "produce-assignments": bool,
    "produce-models": bool,
    "produce-proofs": bool,
    "produce-unsat-assumptions": bool,
    "produce-unsat-cores": bool,
    "random-seed": int,
    "regular-output-channel": str,
    "reproducible-resource-limit": int,
    "verbosity": int
}

__smtlib26_info_flags_ = [
    "all-statistics",
    "assertion-stack-levels",
    "authors",
    "error-behavior",
    "name",
    "reason-unknown",
    "version",
]


class Attribute(object):
    def __init__(self, keyw, attribute_val):
        if isinstance(keyw, Keyword):
            self.aname = keyw.word
            self.aval = attribute_val
        else:
            raise TypeError("Attribute expects a keyword, received %s" % str(keyw))

    def __str__(self):
        if self.aval is not None:
            return ":%s %s" % (self.aname, self.aval)
        else:
            return ":" + str(self.aname)


class Keyword(object):
    def __init__(self, name):
        self.word = name

    def __str__(self):
        return ":%s" % self.word


class Option(object):
    def __init__(self, keyw, option_val):
        if isinstance(keyw, Keyword):
            self.oname = keyw.word
        else:
            raise TypeError("Option expects a keyword, received %s" % str(keyw))

        if option_val is not None:
            self.oval = option_val
        else:
            raise TypeError("Option needs a value, received %s" % str(option_val))

    def __str__(self):
        return ":%s %s" % (self.oname, self.oval)


class InfoFlag(object):
    def __init__(self, name):
        self.word = name

    def __str__(self):
        return ":%s" % self.word


class Identifier(object):
    def __init__(self, name, indexes=None):
        self.name = name
        self.indexes = indexes

    def __str__(self):
        if self.indexes is not None and len(self.indexes) > 0:
            return "(_ %s %s)" % (self.name , ' '.join([str(x) for x in self.indexes]))
        else:
            return str(self.name)


class Sort(object):
    def __init__(self, name, subsortlist):
        self.sname = name
        self.subsortlist = subsortlist

    def __str__(self):
        if len(self.subsortlist) > 0:
            return "(%s %s)" % (str(self.sname), " ".join([str(x) for x in self.subsortlist]))
        else:
            return str(self.sname)


class Binding(object):
    def __init__(self, var, expr):
        self.var = var
        self.expr = expr

    def wf(self):
        return isinstance(self.var, str)

    def __str__(self):
        return "(%s %s)" % (str(self.var), str(self.expr))


class SortedVar(object):
    def __init__(self, var, sort):
        self.var = var
        self.sort = sort

    def wf(self):
        return isinstance(self.var, str) and isinstance(self.sort, Sort)

    def __str__(self):
        return "(%s %s)" % (str(self.var), str(self.sort))


class Pattern(object):
    def __init__(self, symbol, symbols):
        self.symbol = symbol
        self.symbols = symbols

    def __str__(self):
        if len(self.symbols) > 0:
            return "(%s %s)" % (str(self.symbol), " ".join([str(x) for x in self.symbols]))
        else:
            return str(self.symbol)


class Case(object):
    def __init__(self, pattern, term):
        self.pattern = pattern
        self.term = term

    def __str__(self):
        return "(%s %s)" % (str(self.pattern), str(self.term))

# ----------------------------------------------------------------------------- TERMS
class Term(object):
    def __init__(self):
        self.attributes = {}

    def add_attribute(self, attribute):
        self.attributes[attribute.aname] = attribute


class Constant(Term):
    def __init__(self, value):
        super(Constant, self).__init__()
        self.value = value

    def __str__(self):
        return str(self.value)


class QIdent(Term):
    def __init__(self, ident, sort=None):
        super(QIdent, self).__init__()
        self.qident = ident
        self.qisort = sort

    def __str__(self):
        if self.qisort is not None:
            return "(%s %s)" % (str(self.qident), str(self.qisort))
        else:
            return str(self.qident)


class Match(Term):
    def __init__(self, term, cases):
        super(Match, self).__init__()
        self.term = term
        self.cases = cases

    def __str__(self):
        return "(match %s (%s))" % (str(self.term), " ".join([str(case) for case in self.cases]))


class FApp(Term):
    def __init__(self, qiname, tlist):
        super(FApp, self).__init__()
        self.function = qiname
        self.args = tlist

    def __str__(self):
        return "(%s %s)" % (str(self.function), ' '.join([str(x) for x in self.args]))

class Let(Term):
    def __init__(self, bindings, term):
        super(Let, self).__init__()
        self.bindings = bindings
        self.term = term

    def __str__(self):
        return "(let (%s) %s)" % (" ".join([str(x) for x in self.bindings]), str(self.term))


class Forall(Term):
    def __init__(self, sort_vars, term):
        super(Forall, self).__init__()
        self.svars = sort_vars
        self.term = term

    def __str__(self):
        return "(forall (%s) %s)" % (" ".join([str(x) for x in self.svars]), str(self.term))


class Exist(Term):
    def __init__(self, sort_vars, term):
        super(Exist, self).__init__()
        self.svars = sort_vars
        self.term = term

    def __str__(self):
        return "(exists (%s) %s)" % (" ".join([str(x) for x in self.svars]), str(self.term))


# ---------------------------------------------------------------------------------- COMMANDS
class FunctionDef(object):
    def __init__(self, symbol, sorted_args, sort, term):
        self.name = symbol
        self.args = sorted_args
        self.sort = sort
        self.term = term

    def __str__(self):
        return "(%s (%s) %s %s)" % (self.name, " ".join([str(x) for x in self.args]), str(self.sort), str(self.term))

class Command(object):
    _smtlib26_commands_ = {
        'assert': "(%s %s)",
        'check-sat': "(%s)",
        'check-sat-assuming': "(%s (%s))",
        'declare-const': "(%s %s %s)",
        'declare-datatype': "(%s %s %s)",
        'declare-datatypes': "(%s (%s) (%s))",
        'declare-fun': "(%s %s (%s) %s)",
        'declare-sort': "(%s %s %s)",
        'define-fun': "(%s %s)",
        'define-fun-rec': "(%s %s)",
        'define-funs-rec': "(%s (%s) (%s))",
        'define-sort': "(%s %s (%s) %s)",
        'echo': "(%s %s)",
        'exit': "(%s)",
        'get-assertions': "(%s)",
        'get-assignment': "(%s)",
        'get-info': "(%s %s)",
        'get-model': "(%s)",
        'get-option': "(%s %s)",
        'get-proof': "(%s)",
        'get-unsat-assumptions)': "(%s)",
        'get-unsat-core': "(%s)",
        'get-value': "(%s (%s))",
        'pop': "(%s %s)",
        'push': "(%s %s)",
        'reset-assertions': "(%s)",
        'set-info': "(%s %s)",
        'set-logic': "(%s %s)",
        'set-option': "(%s %s)",
        'sat': "%s",
        'unsat': "%s",
        'model': "(%s %s)"

    }

    def __init__(self, commandname, commandargs):
        self.cname = commandname
        self.cargs = commandargs

    def __str__(self):
        def _s(l):
            if isinstance(l, list):
                return " ".join([str(x) for x in l])
            else:
                return str(l)

        try:
            pattern = self._smtlib26_commands_[self.cname]
            if len(self.cargs) == 0:
                return pattern % str(self.cname)
            elif len(self.cargs) == 1:
                return pattern % (str(self.cname), _s(self.cargs[0]))
            elif len(self.cargs) == 2:
                return pattern % (str(self.cname), _s(self.cargs[0]), _s(self.cargs[1]))
            elif len(self.cargs) == 3:
                return pattern % (self.cname, _s(self.cargs[0]), _s(self.cargs[1]), _s(self.cargs[2]))
            else:
                ValueError("%s cannot be a smtlib command." % self.cname)
        except Exception:
            return "Error on command %s with arguments %s" % (self.cname, " ".join([str(x) for x in self.cargs]))


class ErrorResponse(object):
    def __init__(self, msg):
        self.msg = msg

    def __str__(self):
        return "(error %s)" % self.msg


class Model(object):
    def __init__(self, model):
        self.model = model

    def __str__(self):
        return "(model %s)" % "\n\t".join([str(x) for x in self.model])

