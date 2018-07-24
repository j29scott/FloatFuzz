;  time  = 600
;  terms = 30
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
(assert (fp.geq (fp.rem (fp.rem (fp.div RNE x1 x1) (fp.sub RNE (fp.rem x3 x2) (fp.abs x0))) (fp.div RNE (fp.rem x2 (fp.rem x2 x1)) (fp.neg x1))) (fp.neg (fp.rem (fp.roundToIntegral RNE x0) (fp.sub RNE (fp.roundToIntegral RNE x0) (fp.div RNE x3 x3))))))
(check-sat)