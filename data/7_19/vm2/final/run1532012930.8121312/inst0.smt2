;  time  = 600
;  terms = 29
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
(assert (fp.eq (fp.max (fp.div RNE (fp.abs x2) (fp.sub RNE x1 x1)) (fp.mul RNE (fp.add RNE x2 x3) (fp.add RNE x2 x2))) (fp.add RNE (fp.mul RNE (fp.sub RNE x2 x1) (fp.neg x0)) (fp.fma RNE (fp.max x2 x3) (fp.neg x0) (fp.roundToIntegral RNE x1)))))
(check-sat)