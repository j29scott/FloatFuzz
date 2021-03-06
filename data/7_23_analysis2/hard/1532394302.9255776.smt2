;  time  = 600
;  terms = 43
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
(assert (fp.gt (fp.fma RNE (fp.rem (fp.mul RNE x0 x1) (fp.roundToIntegral RNE x1)) (fp.rem (fp.roundToIntegral RNE x0) (fp.div RNE x2 x0)) (fp.rem (fp.rem x3 (fp.abs x2)) (fp.abs x1))) (fp.sub RNE (fp.rem (fp.max x1 x3) (fp.fma RNE (fp.rem x2 x2) (fp.max x2 x2) (fp.min x2 x0))) (fp.rem (fp.min x3 x0) (fp.rem x0 x3)))))
(check-sat)