;  time  = 590.3582451343536
;  terms = 25
;  score = 590.3582451343536
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
(assert (fp.isPositive (fp.fma RNE (fp.rem (fp.rem x2 (fp.roundToIntegral RNE x0)) (fp.rem x0 (fp.abs x3))) (fp.mul RNE (fp.div RNE x0 x2) (fp.mul RNE x0 x1)) (fp.rem (fp.fma RNE x1 x3 x1) (fp.abs x3)))))
(check-sat)