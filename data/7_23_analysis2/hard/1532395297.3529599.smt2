;  time  = 600
;  terms = 44
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
(assert (fp.lt (fp.fma RNE (fp.add RNE (fp.neg x1) (fp.rem x1 x1)) (fp.sqrt RNE (fp.rem x3 x2)) (fp.sub RNE (fp.rem x1 (fp.rem x0 x1)) (fp.mul RNE x3 x2))) (fp.rem (fp.rem (fp.rem x0 (fp.rem x2 x3)) (fp.rem x0 (fp.add RNE x3 x0))) (fp.fma RNE (fp.rem x0 (fp.roundToIntegral RNE x2)) (fp.rem x2 x2) (fp.mul RNE x2 x3)))))
(check-sat)