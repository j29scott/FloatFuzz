;  time  = {}
;  terms = 44
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
(assert (fp.gt (fp.fma RNE (fp.min (fp.mul RNE x2 x2) (fp.add RNE x2 x1)) (fp.add RNE (fp.rem x0 x0) (fp.max x0 (fp.abs x3))) (fp.neg (fp.add RNE x0 x2))) (fp.add RNE (fp.fma RNE (fp.neg x0) (fp.neg x0) (fp.abs x3)) (fp.min (fp.add RNE (fp.roundToIntegral RNE x1) (fp.max x2 x2)) (fp.mul RNE (fp.max x1 x0) (fp.fma RNE x3 x2 x0))))))(check-sat)