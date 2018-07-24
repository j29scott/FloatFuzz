;  time  = 599.272439956665
;  terms = 32
;  score = 599.272439956665
;  stdout= sat

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
(assert (fp.lt (fp.sub RNE (fp.max (fp.rem x3 x2) (fp.div RNE x0 x3)) (fp.roundToIntegral RNE (fp.neg x1))) (fp.fma RNE (fp.roundToIntegral RNE (fp.rem x1 x1)) (fp.mul RNE (fp.fma RNE x3 x1 x2) (fp.rem x3 (fp.neg x1))) (fp.rem (fp.roundToIntegral RNE x2) (fp.rem x3 x1)))))
(check-sat)