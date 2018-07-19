;  time  = 471.69326305389404
;  terms = 23
;  score = 0.7861554384231567
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
(assert (fp.geq (fp.mul RNE (fp.sqrt RNE (fp.roundToIntegral RNE x3)) (fp.roundToIntegral RNE (fp.sub RNE x2 x0))) (fp.roundToIntegral RNE (fp.neg (fp.rem x1 x0)))))
(check-sat)