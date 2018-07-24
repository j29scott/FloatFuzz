;  time  = 600
;  terms = 10
;  score = 600
;  stdout= 
(set-logic QF_FP)
(declare-const x0 (_ FloatingPoint 8 24))
(declare-const x1 (_ FloatingPoint 8 24))
(declare-const x2 (_ FloatingPoint 8 24))
;(assert (not (fp.isNaN x0)))
;(assert (not (fp.isInfinite x0)))
;(assert (not (fp.isZero x0)))
;(assert (not (fp.isNaN x1)))
;(assert (not (fp.isInfinite x1)))
;(assert (not (fp.isZero x1)))
;(assert (not (fp.isNaN x2)))
;(assert (not (fp.isInfinite x2)))
;(assert (not (fp.isZero x2)))
(assert (fp.leq (fp.sub RNE (fp.abs x2) (fp.sqrt RNE x1)) (fp.sqrt RNE (fp.rem x2 x1))))
(check-sat)
