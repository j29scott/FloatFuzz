;  time  = 600
;  terms = 30
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
(assert (fp.leq (fp.rem (fp.min (fp.rem x0 (fp.neg x1)) (fp.fma RNE x1 x0 x0)) (fp.rem (fp.min x2 x0) (fp.min x3 x1))) (fp.rem (fp.rem (fp.rem x0 x2) (fp.mul RNE x0 x2)) (fp.roundToIntegral RNE (fp.roundToIntegral RNE (fp.abs x2))))))
(check-sat)