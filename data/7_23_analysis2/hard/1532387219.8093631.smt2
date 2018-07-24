;  time  = 600
;  terms = 26
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
(assert (fp.gt (fp.sub RNE (fp.div RNE (fp.abs x1) (fp.mul RNE x0 x0)) (fp.roundToIntegral RNE (fp.min x2 x2))) (fp.rem (fp.add RNE (fp.roundToIntegral RNE x0) (fp.sub RNE x2 x2)) (fp.sub RNE (fp.add RNE x0 x1) (fp.add RNE x1 x0)))))
(check-sat)