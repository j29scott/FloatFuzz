;  time  = 600
;  terms = 42
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
(assert (fp.leq (fp.rem (fp.fma RNE (fp.rem x1 x3) (fp.sub RNE x2 x3) (fp.sub RNE x1 x3)) (fp.rem (fp.rem x0 (fp.sqrt RNE x0)) (fp.roundToIntegral RNE (fp.abs x3)))) (fp.rem (fp.min (fp.rem x0 x1) (fp.rem x2 x0)) (fp.min (fp.fma RNE (fp.sqrt RNE x2) (fp.max x3 x2) (fp.sqrt RNE x3)) (fp.mul RNE (fp.roundToIntegral RNE x1) (fp.abs x3))))))
(check-sat)