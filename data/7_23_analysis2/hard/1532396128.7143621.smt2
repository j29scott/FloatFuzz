;  time  = 600
;  terms = 46
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
(assert (fp.gt (fp.rem (fp.rem (fp.fma RNE x1 x2 x1) (fp.fma RNE (fp.mul RNE x1 x1) (fp.sqrt RNE x2) (fp.roundToIntegral RNE x0))) (fp.add RNE (fp.div RNE (fp.sqrt RNE x2) (fp.max x0 x3)) (fp.div RNE (fp.abs x0) (fp.neg x1)))) (fp.add RNE (fp.mul RNE (fp.fma RNE x2 x0 x3) (fp.rem x1 (fp.div RNE x0 x1))) (fp.add RNE (fp.roundToIntegral RNE x0) (fp.rem x3 (fp.mul RNE x0 x3))))))
(check-sat)