import ply.yacc as yacc
import slap.interface.parser.ast as ast
from slap.interface.parser.lex import tokens


class ParseException(Exception):
    def __init__(self, obj):
        self.object = obj

    def __str__(self):
        return "Parsing exception on : %s." % str(self.object)


# A program (or script) is a list of commands.
def p_program(p):
    '''program : commandlist'''
    p[0] = p[1]


# A symbol is a simple symbol or a quoted symbol
def p_symbol(p):
    '''symbol : SIMPLE_SYMBOL
    | QUOTED_SYMBOL'''
    p[0] = p[1]


def p_keyword(p):
    '''keyword : COLON SIMPLE_SYMBOL'''
    p[0] = ast.Keyword(p[2])


# Attribute values can be constants or symbols. For now, other s-expressions are not supported.
def p_attribute_value(p):
    '''attribute_value : constant
    | symbol
    | SAT
    | UNSAT''' # so that (set-info :status unsat) parses
    p[0] = p[1]


def p_attribute(p):
    '''attribute : keyword
    | keyword attribute_value'''
    if len(p) == 3:
        p[0] = ast.Attribute(p[1], p[2])
    else:
        p[0] = ast.Attribute(p[1], [])


def p_attributes(p):
    '''attributes :
    | attributes attribute'''
    if len(p) == 3:
        p[0] = p[1] + [p[2]]
    else:
        p[0] = []


#  Options and info flags are similar to attributes
def p_option(p):
    '''option : keyword attribute_value'''
    p[0] = ast.Option(p[1], p[2])


def p_info_flag(p):
    '''info_flag : keyword'''
    p[0] = ast.InfoFlag(p[1])

# Identifiers are a symbol or a S-Expression of the form (_ symbol index+), with index defined below
def p_index(p):
    '''index : NUMBER
    | symbol'''
    p[0] = p[1]


def p_indexlist(p):
    '''indexlist :
    | indexlist index'''
    if len(p) == 3:
        p[0] = p[1] + [p[2]]
    else:
        p[0] = []

# Identifiers, for example <abs> , (_ BitVec 32) or Int are identifiers.
def p_identifier(p):
    '''identifier : symbol
    | LPAR UNDERSCORE symbol indexlist RPAR'''
    if len(p) == 2:
        p[0] = ast.Identifier(p[1], [])
    else:
        p[0] = ast.Identifier(p[3], p[4])


def p_constant(p):
    '''constant : NUMBER
    | BOOL
    | STRING_LITERAL'''
    p[0] = ast.Constant(p[1])


def p_symbollist_empty(p):
    '''symbollist :'''
    p[0] = []


def p_symbollist(p):
    '''symbollist : symbollist symbol'''
    p[0] = p[1] + [p[2]]


def p_sort_base(p):
    '''sort : identifier'''
    p[0] = ast.Sort(p[1], [])


def p_sort_id(p):
    '''sort : LPAR identifier sortlist RPAR'''
    p[0] = ast.Sort(p[2], p[3])


def p_sortlist_single(p):
    '''sortlist :
    | sortlist sort'''
    if len(p) == 3:
        p[0] = p[1] + [p[2]]
    else:
        p[0] = []


def p_qual_identifier(p):
    '''qual_identifier : identifier'''
    p[0] = ast.QIdent(p[1])


def p_qual_identifier_as(p):
    '''qual_identifier : LPAR AS identifier sort RPAR'''
    p[0] = ast.QIdent(p[3], p[4])


def p_var_binding(p):
    '''var_binding : LPAR symbol term RPAR'''
    p[0] = ast.Binding(p[2], p[3])


def p_var_binding_list_single(p):
    '''var_binding_list : var_binding '''
    p[0] = [p[1]]


def p_var_binding_list_m(p):
    '''var_binding_list : var_binding_list var_binding'''
    p[0] = p[1] + [p[2]]


def p_sorted_var(p):
    '''sorted_var : LPAR symbol sort RPAR'''
    p[0] = ast.SortedVar(p[2], p[3])


def p_sorted_var_list_empty(p):
    '''sorted_var_list : '''
    p[0] = []


def p_sorted_var_list_single(p):
    '''sorted_var_list : sorted_var'''
    p[0] = [p[1]]


def p_sorted_var_list_m(p):
    '''sorted_var_list : sorted_var_list sorted_var'''
    p[0] = p[1] + [p[2]]


def p_pattern_empty(p):
    '''pattern : symbol'''
    p[0] = ast.Pattern(p[1])


def p_pattern(p):
    '''pattern : LPAR symbol symbollist RPAR'''
    p[0] = ast.Pattern(p[2], p[3])


def p_match_case(p):
    '''match_case : LPAR pattern term RPAR'''
    p[0] = ast.Case(p[2], p[3])


def p_match_case_list(p):
    '''match_case_list : match_case'''
    p[0] = [p[1]]

def p_match_case_list_m(p):
    '''match_case_list : match_case_list match_case'''
    p[0] = p[1] + [p[2]]


def p_term_constant(p):
    '''term : constant'''
    p[0] = p[1]


def p_term_id(p):
    '''term : qual_identifier'''
    p[0] = p[1]


def p_term_fapp(p):
    '''term : LPAR qual_identifier term_list RPAR'''
    p[0] = ast.FApp(p[2], p[3])


def p_term_let(p):
    '''term : LPAR LET LPAR var_binding_list RPAR term RPAR'''
    p[0] = ast.Let(p[4], p[6])


def p_term_forall(p):
    '''term : LPAR FORALL LPAR sorted_var_list RPAR term RPAR'''
    p[0] = ast.Forall(p[4], p[6])


def p_term_exists(p):
    '''term : LPAR EXISTS LPAR sorted_var_list RPAR term RPAR'''
    if len(p[4]) == 0:
        raise Exception("Exists has no existential variables.")
    p[0] = ast.Exist(p[4], p[6])


def p_term_match(p):
    '''term : LPAR MATCH term LPAR match_case_list RPAR RPAR'''
    p[0] = ast.Match(p[3], p[5])


def p_term_attr(p):
    '''term : LPAR EXCLMARK term attributes RPAR'''
    p[0] = p[3].add_attributes(p[4])


def p_term_list(p):
    '''term_list :
    | term_list term'''
    if len(p) == 3:
        p[0] = p[1] + [p[2]]
    else:
        p[0] = []

# End of the terms grammar, now describing the commands


# def p_sort_dec(p):
#     '''sort_dec : LPAR symbol NUMBER RPAR'''
#     p[0] = (p[2], p[3])


def p_selector_dec(p):
    '''selector_dec : LPAR symbol sort RPAR'''
    p[0] = (p[2], p[3])


def p_sedec_list(p):
    '''selector_dec_list :
                          | selector_dec_list selector_dec'''
    if len(p) == 3:
        p[0] = p[1] + [p[2]]
    else:
        p[0] = []


def p_constructor_dec(p):
    '''constructor_dec : LPAR symbol selector_dec_list RPAR'''
    p[0] = (p[2], p[3])


def p_codec_list(p):
    '''constructor_dec_list :
                              | constructor_dec_list constructor_dec'''
    if len(p) == 3:
        p[0] = p[1] + [p[2]]
    else:
        p[0] = []


def p_datatype_dec(p):
    '''datatype_dec : LPAR constructor_dec_list RPAR
                    | LPAR PAR LPAR symbollist RPAR LPAR constructor_dec_list RPAR RPAR'''
    if len(p) == 4:
        p[0] = (p[2], [])
    else:
        p[0] = (p[7], p[4])


def p_datatype_dec_list(p):
    '''datatype_dec_list :
    | datatype_dec_list datatype_dec '''
    if len(p) == 3:
        p[0] = p[1] + [p[2]]
    else:
        p[0] = []


# def p_function_dec(p):
#     '''function_dec : LPAR symbol LPAR sorted_var_list RPAR sort RPAR'''
#     p[0] = (p[2], p[4], p[6])
#

def p_function_def(p):
    '''function_def : symbol LPAR sorted_var_list RPAR sort term'''
    p[0] = ast.FunctionDef(p[1], p[3], p[5], p[6])


def p_function_def_list(p):
    '''function_def_list :
    | function_def_list function_def'''
    if len(p) == 3:
        p[0] = p[1] + [p[2]]
    else:
        p[0] = []


def p_prop_literal(p):
    '''prop_literal : symbol
                    | LPAR symbol symbol RPAR'''
    if len(p) == 2:
        p[0] = (p[1], True)
    else:
        if p[2] == "not":
            p[0] = (p[3], False)
        else:
            raise ParseException(p[2])



def p_prop_lit_list(p):
    '''prop_literal_list :
    | prop_literal_list prop_literal '''
    if len(p) == 3:
        p[0] = p[1] + [p[2]]
    else:
        p[0] = []


def p_assert(p):
    '''command : LPAR ASSERT term RPAR'''
    p[0] = ast.Command(p[2], [p[3]])


def p_checksat(p):
    '''command : LPAR CHKSAT RPAR'''
    p[0] = ast.Command(p[2], [])


def p_checksat_assuming(p):
    '''command : LPAR CHKSATASSUMING prop_literal_list RPAR'''
    p[0] = ast.Command(p[2],p[3])


def p_declare_const(p):
    '''command : LPAR DECLCONST symbol sort RPAR'''
    p[0] = ast.Command(p[2], [p[3], p[4]])


def p_declare_datatype(p):
    '''command : LPAR DECLDATATYPE symbol datatype_dec RPAR'''
    p[0] = ast.Command(p[2], [p[3], p[4]])


def p_declare_datatypes(p):
    '''command : LPAR DECLDATATYPES LPAR symbollist RPAR LPAR datatype_dec_list RPAR RPAR'''
    p[0] = ast.Command(p[2], [p[4], p[7]])


def p_declare_function(p):
    '''command : LPAR DECLFUN symbol LPAR sortlist RPAR sort RPAR'''
    p[0] = ast.Command(p[2], [p[3], p[5], p[7]])


def p_declare_sort(p):
    '''command : LPAR DECLSORT symbol NUMBER RPAR'''
    p[0] = ast.Command(p[2], [p[3], p[4]])


def p_define_function(p):
    '''command : LPAR DEFFUN function_def RPAR'''
    p[0] = ast.Command(p[2], [p[3]])


def p_define_function_rec(p):
    '''command : LPAR DEFFUNREC function_def RPAR'''
    p[0] = ast.Command(p[2], [p[3]])


def p_define_functions_rec(p):
    '''command : LPAR DEFFUNSREC LPAR function_def_list RPAR LPAR term_list RPAR RPAR'''
    if len(p[4]) != len(p[7]):
        raise Exception("Function definition: provide as many terms as functions definition.")

    p[0] = ast.Command(p[2], [p[4],p[7]])


def p_define_sort(p):
    '''command : LPAR DEFSORT symbol LPAR symbollist RPAR sort RPAR'''
    p[0] = ast.Command(p[2], [p[3], p[5], p[7]])


def p_echo(p):
    '''command : LPAR ECHO STRING RPAR'''
    p[0] = ast.Command(p[2], p[3])


def p_exit(p):
    '''command : LPAR EXIT RPAR'''
    p[0] = ast.Command(p[2], [])


def p_geassertions(p):
    '''command : LPAR GETASSERTIONS RPAR'''
    p[0] = ast.Command(p[2], [])


def p_getassignment(p):
    '''command : LPAR GETASSIGNMENT RPAR'''
    p[0] = ast.Command(p[2], [])


def p_getinfo(p):
    '''command : LPAR GETINF info_flag RPAR'''
    p[0] = ast.Command(p[2], [p[3]])


def p_getmodel(p):
    '''command : LPAR GETMOD RPAR'''
    p[0] = ast.Command(p[2], [])


def p_getoptions(p):
    '''command : LPAR GETOPT RPAR'''
    p[0] = ast.Command(p[2], [])


def p_getproof(p):
    '''command : LPAR GETPRF RPAR'''
    p[0] = ast.Command(p[2], [])


def p_get_unsat_assumptions(p):
    '''command : LPAR GETUNSATASSUMPTS RPAR'''
    p[0] = ast.Command(p[2])


def p_get_unsat_core(p):
    '''command : LPAR GETUNSATCORE RPAR'''
    p[0] = ast.Command(p[2], [])


def p_get_value(p):
    '''command : LPAR GETVAL LPAR term_list RPAR RPAR'''
    p[0] = ast.Command(p[2], [p[4]])


def p_pop(p):
    '''command : LPAR POP NUMBER RPAR'''
    p[0] = ast.Command(p[2], [p[3]])


def p_push(p):
    '''command : LPAR PUSH NUMBER RPAR'''
    p[0] = ast.Command(p[2], [p[3]])


def p_reset(p):
    '''command : LPAR RESET RPAR'''
    p[0] = ast.Command(p[2])


def p_reset_assertions(p):
    '''command : LPAR RESETASSERTIONS'''
    p[0] = ast.Command(p[2], [])


def p_set_info(p):
    '''command : LPAR SETINFO attribute RPAR'''
    p[0] = ast.Command(p[2], [p[3]])


def p_set_logic(p):
    '''command : LPAR SETLOGIC symbol RPAR'''
    p[0] = ast.Command(p[2], [p[3]])


def p_set_option(p):
    '''command : LPAR SETOPT option RPAR'''
    p[0] = ast.Command(p[2], [p[3]])


def p_model(p):
    '''command : LPAR MODEL commandlist RPAR'''
    p[0] = ast.Model(p[3])


def p_command_error(p):
    '''command : LPAR ERROR STRING_LITERAL RPAR'''
    p[0] = ast.ErrorResponse(p[3])


def p_unsat_or_sat(p):
    '''command : SAT
    | UNSAT'''
    p[0] = p[1]


def p_commandlist(p):
    '''commandlist :
    | commandlist command'''
    if len(p) == 3:
        p[0] = p[1] + [p[2]]
    else:
        p[0] = []


def p_error(p):
    print("error : " + str(p))


parser = yacc.yacc()
