;  time  = {}
;  terms = 33
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
(assert (fp.eq (fp.mul RNE (fp.roundToIntegral RNE (fp.neg x1)) (fp.div RNE (fp.sub RNE (fp.mul RNE x2 x2) (fp.sqrt RNE x3)) (fp.add RNE (fp.roundToIntegral RNE x3) (fp.sub RNE x3 x3)))) (fp.sub RNE (fp.add RNE (fp.add RNE x0 x1) (fp.div RNE x0 x3)) (fp.div RNE (fp.sqrt RNE x1) (fp.sqrt RNE (fp.div RNE x2 x1))))))(check-sat)