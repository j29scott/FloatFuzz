;  time  = {}
;  terms = 36
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
(assert (fp.lt (fp.max (fp.max (fp.max x2 (fp.sqrt RNE x0)) (fp.sqrt RNE (fp.neg x1))) (fp.mul RNE (fp.max (fp.neg x3) (fp.max x2 x0)) (fp.max (fp.mul RNE x1 x0) (fp.mul RNE x2 x0)))) (fp.max (fp.roundToIntegral RNE (fp.max x2 x3)) (fp.max (fp.div RNE x0 x0) (fp.add RNE x0 x2)))))(check-sat)