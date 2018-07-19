;  time  = 554.6904797554016
;  terms = 23
;  score = 0.9244841329256693
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
(assert (fp.eq (fp.rem (fp.roundToIntegral RNE (fp.neg x1)) (fp.max (fp.div RNE x2 x1) (fp.fma RNE x1 x1 x1))) (fp.rem (fp.max (fp.div RNE x1 x0) (fp.abs x0)) (fp.roundToIntegral RNE (fp.roundToIntegral RNE x3)))))
(check-sat)