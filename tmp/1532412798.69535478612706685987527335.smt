;  time  = {}
;  terms = 27
;  score = -1
;  stdout= {}
(set-logic QF_FP)
(define-fun pone () (_ FloatingPoint 8 24) (fp #b0 #b01111111 #b00000000000000000000000))
(define-fun none () (_ FloatingPoint 8 24) (fp #b1 #b01111111 #b00000000000000000000000))
(declare-const x0 (_ FloatingPoint 8 24))
(declare-const x1 (_ FloatingPoint 8 24))
(declare-const x2 (_ FloatingPoint 8 24))
(declare-const x3 (_ FloatingPoint 8 24))
(assert (fp.eq (fp.div RNE (fp.min (fp.neg x2) (fp.roundToIntegral RNE x2)) (fp.sub RNE (fp.sub RNE x0 x0) (fp.rem x0 x1))) (fp.max (fp.rem (fp.sub RNE x1 x2) (fp.fma RNE x1 x3 x3)) (fp.neg (fp.min x1 x0)))))(assert (fp.lt x0 pone ))
(assert (fp.gt x0 none ))
(assert (fp.lt x1 pone ))
(assert (fp.gt x1 none ))
(assert (fp.lt x2 pone ))
(assert (fp.gt x2 none ))
(assert (fp.lt x3 pone ))
(assert (fp.gt x3 none ))
(check-sat)