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
(assert (fp.gt (fp.roundToIntegral RNE (fp.rem (fp.max x2 x3) (fp.rem (fp.sub RNE x2 x3) (fp.min x0 x3)))) (fp.rem (fp.rem (fp.sub RNE x1 x3) (fp.rem (fp.roundToIntegral RNE x0) (fp.add RNE x3 x2))) (fp.rem (fp.neg (fp.max x0 x3)) (fp.rem (fp.sqrt RNE x0) (fp.mul RNE x0 x3))))))
(check-sat)