from slap.mk import *

def_fp32_max	= "(define-fun pinf () (_ FloatingPoint 8 24) (fp #b0 #b11111110 #b11111111111111111111111))"
def_fp32_min	= "(define-fun ninf () (_ FloatingPoint 8 24) (fp #b1 #b11111110 #b11111111111111111111111))"

def_fp32_pone	= "(define-fun pone () (_ FloatingPoint 8 24) (fp #b0 #b01111111 #b00000000000000000000000))"
def_fp32_none	= "(define-fun none () (_ FloatingPoint 8 24) (fp #b1 #b01111111 #b00000000000000000000000))"

pone = "pone"
none = "none"



