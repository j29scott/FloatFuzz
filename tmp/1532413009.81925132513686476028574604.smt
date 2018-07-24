;  time  = {}
;  terms = 23
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
(assert (fp.eq (fp.add RNE (fp.roundToIntegral RNE (fp.neg x1)) (fp.min (fp.abs (fp.mul RNE x1 x0)) (fp.abs (fp.abs x0)))) (fp.sub RNE (fp.add RNE (fp.abs x0) (fp.add RNE x0 x3)) (fp.sqrt RNE (fp.sqrt RNE x1)))))(check-sat)