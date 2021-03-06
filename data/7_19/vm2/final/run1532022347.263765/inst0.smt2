;  time  = 600
;  terms = 30
;  score = 1.0
;  stdout = timeout

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
(assert (fp.lt (fp.max (fp.mul RNE (fp.roundToIntegral RNE x2) (fp.abs x3)) (fp.max (fp.fma RNE x1 x3 x2) (fp.div RNE x0 x3))) (fp.rem (fp.max (fp.roundToIntegral RNE x2) (fp.div RNE x3 x3)) (fp.abs (fp.abs x0)))))
(check-sat)