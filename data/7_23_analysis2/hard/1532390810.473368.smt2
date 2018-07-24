;  time  = 600
;  terms = 35
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
(assert (fp.eq (fp.add RNE (fp.add RNE (fp.min x3 x0) (fp.neg x0)) (fp.fma RNE (fp.roundToIntegral RNE x3) (fp.neg x3) (fp.min x3 x2))) (fp.fma RNE (fp.max (fp.sqrt RNE x3) (fp.add RNE x0 x3)) (fp.mul RNE (fp.rem x3 x1) (fp.roundToIntegral RNE x0)) (fp.div RNE (fp.rem x3 x2) (fp.neg x2)))))
(check-sat)