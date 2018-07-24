;  time  = {}
;  terms = 25
;  score = -1
;  stdout= {}
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
(assert (fp.gt (fp.sub RNE (fp.max (fp.min x3 x1) (fp.sub RNE x1 x3)) (fp.sub RNE (fp.mul RNE x2 x2) (fp.add RNE x1 x2))) (fp.sub RNE (fp.mul RNE (fp.neg x1) (fp.roundToIntegral RNE x3)) (fp.roundToIntegral RNE (fp.roundToIntegral RNE x2)))))(check-sat)