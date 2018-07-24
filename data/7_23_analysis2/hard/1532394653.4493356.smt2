;  time  = 600
;  terms = 37
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
(assert (fp.lt (fp.max (fp.mul RNE (fp.rem x3 (fp.neg x2)) (fp.rem x1 x0)) (fp.abs (fp.mul RNE x1 x3))) (fp.rem (fp.rem (fp.rem x1 x0) (fp.fma RNE (fp.roundToIntegral RNE x0) (fp.div RNE x3 x0) (fp.neg x1))) (fp.add RNE (fp.rem x1 (fp.max x0 x2)) (fp.rem x3 (fp.roundToIntegral RNE x1))))))
(check-sat)