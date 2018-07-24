;  time  = 562.1507263183594
;  terms = 22
;  score = 562.1507263183594
;  stdout= sat

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
(assert (fp.leq (fp.sqrt RNE (fp.add RNE (fp.mul RNE x0 x3) (fp.min x2 x1))) (fp.rem (fp.min (fp.mul RNE x3 x1) (fp.sqrt RNE x2)) (fp.rem (fp.roundToIntegral RNE x1) (fp.rem x1 x0)))))
(check-sat)