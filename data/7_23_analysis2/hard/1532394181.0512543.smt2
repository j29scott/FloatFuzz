;  time  = 579.1847660541534
;  terms = 33
;  score = 579.1847660541534
;  stdout= unsat

(set-logic QF_FP)
(declare-const x0 (_ FloatingPoint 8 24))
(declare-const x1 (_ FloatingPoint 8 24))
(declare-const x2 (_ FloatingPoint 8 24))
(declare-const x3 (_ FloatingPoint 8 24))
(assert (not (fp.isNaN x0)))
(assert (not (fp.isInfinite x0)))
(assert (not (fp.isZero x0)))
(assert (not (fp.isNaN x1)))
(assert (not (fp.isInfinite x1)))
(assert (not (fp.isZero x1)))
(assert (not (fp.isNaN x2)))
(assert (not (fp.isInfinite x2)))
(assert (not (fp.isZero x2)))
(assert (not (fp.isNaN x3)))
(assert (not (fp.isInfinite x3)))
(assert (not (fp.isZero x3)))
(assert (fp.lt (fp.rem (fp.neg (fp.roundToIntegral RNE x3)) (fp.rem (fp.rem x0 x0) (fp.min (fp.abs x3) (fp.max x2 x2)))) (fp.max (fp.rem (fp.rem x1 (fp.rem x1 x1)) (fp.rem x3 (fp.roundToIntegral RNE x2))) (fp.rem (fp.rem x0 x3) (fp.rem x2 x0)))))
(check-sat)