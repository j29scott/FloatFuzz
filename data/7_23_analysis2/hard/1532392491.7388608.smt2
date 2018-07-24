;  time  = 600
;  terms = 32
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
(assert (fp.lt (fp.rem (fp.fma RNE (fp.rem x0 x2) (fp.add RNE x2 x2) (fp.fma RNE x0 x1 x2)) (fp.rem (fp.roundToIntegral RNE x2) (fp.mul RNE x3 x3))) (fp.rem (fp.rem (fp.abs x3) (fp.roundToIntegral RNE x3)) (fp.rem (fp.add RNE x3 x2) (fp.roundToIntegral RNE (fp.sqrt RNE x3))))))
(check-sat)