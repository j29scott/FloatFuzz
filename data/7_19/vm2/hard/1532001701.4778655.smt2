;  time  = 600
;  terms = 28
;  score = 1.0
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
(assert (fp.eq (fp.div RNE (fp.rem (fp.sub RNE x2 x1) (fp.neg x1)) (fp.rem (fp.abs x1) (fp.fma RNE x1 x3 x0))) (fp.sub RNE (fp.rem (fp.roundToIntegral RNE x3) (fp.max x2 x0)) (fp.rem (fp.neg x1) (fp.sub RNE x0 x3)))))
(check-sat)