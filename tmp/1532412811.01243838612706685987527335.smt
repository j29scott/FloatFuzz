;  time  = {}
;  terms = 23
;  score = -1
;  stdout= {}
(set-logic QF_FP)
(define-fun pone () (_ FloatingPoint 8 24) (fp #b0 #b01111111 #b00000000000000000000000))
(define-fun none () (_ FloatingPoint 8 24) (fp #b1 #b01111111 #b00000000000000000000000))
(declare-const x0 (_ FloatingPoint 8 24))
(declare-const x1 (_ FloatingPoint 8 24))
(declare-const x2 (_ FloatingPoint 8 24))
(declare-const x3 (_ FloatingPoint 8 24))
(assert (fp.lt (fp.add RNE (fp.add RNE (fp.rem x0 x1) (fp.max x0 x0)) (fp.max (fp.rem x1 x3) (fp.max x0 x1))) (fp.sqrt RNE (fp.min (fp.min x1 x3) (fp.roundToIntegral RNE x3)))))(assert (fp.lt x0 pone ))
(assert (fp.gt x0 none ))
(assert (fp.lt x1 pone ))
(assert (fp.gt x1 none ))
(assert (fp.lt x2 pone ))
(assert (fp.gt x2 none ))
(assert (fp.lt x3 pone ))
(assert (fp.gt x3 none ))
(check-sat)