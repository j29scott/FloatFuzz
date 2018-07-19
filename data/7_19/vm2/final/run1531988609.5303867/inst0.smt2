;  time  = 600
;  terms = 23
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
(assert (fp.leq (fp.roundToIntegral RNE (fp.fma RNE (fp.fma RNE x0 x0 x2) (fp.sub RNE x1 x3) (fp.sqrt RNE x2))) (fp.rem (fp.neg (fp.rem x1 x0)) (fp.sub RNE (fp.sqrt RNE x2) (fp.min x0 x1)))))
(check-sat)