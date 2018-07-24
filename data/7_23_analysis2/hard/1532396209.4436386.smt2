;  time  = 600
;  terms = 27
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
(assert (fp.eq (fp.rem (fp.rem (fp.roundToIntegral RNE x3) (fp.add RNE x0 x0)) (fp.add RNE (fp.rem x1 x0) (fp.roundToIntegral RNE x1))) (fp.rem (fp.neg (fp.min x2 x0)) (fp.max (fp.min x0 x3) (fp.fma RNE x2 x2 x3)))))
(check-sat)