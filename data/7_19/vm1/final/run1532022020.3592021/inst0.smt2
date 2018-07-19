;  time  = 591.0153143405914
;  terms = 29
;  score = 0.9850255239009857
;  stdout = sat

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
(assert (fp.leq (fp.fma RNE (fp.rem (fp.mul RNE x0 x0) (fp.neg x3)) (fp.add RNE (fp.sqrt RNE x0) (fp.abs x2)) (fp.abs (fp.roundToIntegral RNE x1))) (fp.mul RNE (fp.sub RNE (fp.roundToIntegral RNE x2) (fp.min x3 x0)) (fp.sub RNE (fp.rem x1 x0) (fp.fma RNE x1 x2 x1)))))
(check-sat)