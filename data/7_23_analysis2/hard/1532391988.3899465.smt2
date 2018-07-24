;  time  = 600
;  terms = 29
;  score = 600
;  stdout= timeout

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
(assert (fp.eq (fp.rem (fp.abs (fp.roundToIntegral RNE x3)) (fp.max (fp.rem (fp.roundToIntegral RNE x2) (fp.abs x1)) (fp.mul RNE (fp.rem x1 x3) (fp.roundToIntegral RNE x0)))) (fp.rem (fp.abs (fp.fma RNE x0 x2 x0)) (fp.add RNE (fp.roundToIntegral RNE x0) (fp.rem x0 x1)))))
(check-sat)