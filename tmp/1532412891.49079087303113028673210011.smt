;  time  = {}
;  terms = 27
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
(assert (fp.eq (fp.min (fp.sqrt RNE (fp.min x3 x1)) (fp.roundToIntegral RNE (fp.min x1 x1))) (fp.add RNE (fp.fma RNE (fp.neg x1) (fp.rem x0 x2) (fp.mul RNE x0 x3)) (fp.rem (fp.min x0 x3) (fp.add RNE x2 x3)))))(check-sat)