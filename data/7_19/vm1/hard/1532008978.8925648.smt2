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
(assert (fp.leq (fp.sub RNE (fp.mul RNE (fp.sub RNE x1 x1) (fp.roundToIntegral RNE x2)) (fp.rem (fp.sub RNE x3 x2) (fp.rem x3 x2))) (fp.rem (fp.sub RNE (fp.rem x0 x3) (fp.abs x2)) (fp.rem (fp.div RNE x0 x3) (fp.neg x1)))))
(check-sat)