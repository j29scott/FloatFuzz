;  time  = 600
;  terms = 29
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
(assert (fp.eq (fp.fma RNE (fp.rem (fp.sqrt RNE x1) (fp.abs x3)) (fp.sub RNE (fp.rem x0 x3) (fp.sqrt RNE x2)) (fp.mul RNE (fp.abs x1) (fp.mul RNE x0 x2))) (fp.mul RNE (fp.roundToIntegral RNE (fp.abs x3)) (fp.rem (fp.min x0 x0) (fp.neg x2)))))
(check-sat)