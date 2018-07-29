;  time  = {'mathsat': 4.178191423416138, 'z3': 587.059}
;  terms = 133
;  score = 582.8808085765838
;  stdout= {'mathsat': 'sat', 'z3': 'sat\n'}
(set-logic QF_FP)
(declare-const x0 (_ FloatingPoint 8 24))
(declare-const x1 (_ FloatingPoint 8 24))
(declare-const x2 (_ FloatingPoint 8 24))
(declare-const x3 (_ FloatingPoint 8 24))
(declare-const x4 (_ FloatingPoint 8 24))
(declare-const x5 (_ FloatingPoint 8 24))
(declare-const x6 (_ FloatingPoint 8 24))
(declare-const x7 (_ FloatingPoint 8 24))
(declare-const x8 (_ FloatingPoint 8 24))
(declare-const x9 (_ FloatingPoint 8 24))
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
(assert (not (fp.isNaN x4)))
(assert (not (fp.isInfinite x4)))
(assert (not (fp.isZero x4)))
(assert (not (fp.isNaN x5)))
(assert (not (fp.isInfinite x5)))
(assert (not (fp.isZero x5)))
(assert (not (fp.isNaN x6)))
(assert (not (fp.isInfinite x6)))
(assert (not (fp.isZero x6)))
(assert (not (fp.isNaN x7)))
(assert (not (fp.isInfinite x7)))
(assert (not (fp.isZero x7)))
(assert (not (fp.isNaN x8)))
(assert (not (fp.isInfinite x8)))
(assert (not (fp.isZero x8)))
(assert (not (fp.isNaN x9)))
(assert (not (fp.isInfinite x9)))
(assert (not (fp.isZero x9)))
(assert (fp.gt (fp.min (fp.min (fp.div RNE (fp.min (fp.roundToIntegral RNE x8) (fp.add RNE (fp.neg x0) (fp.add RNE x5 x3))) (fp.mul RNE (fp.add RNE (fp.add RNE x5 x4) (fp.abs x1)) (fp.min (fp.div RNE x9 x3) (fp.min x1 x9)))) (fp.min (fp.max (fp.sqrt RNE x8) (fp.add RNE x1 x9)) (fp.div RNE (fp.max (fp.min x0 x4) (fp.min x2 x6)) (fp.roundToIntegral RNE (fp.max x5 x4))))) (fp.add RNE (fp.min (fp.sub RNE (fp.add RNE (fp.add RNE x9 x2) (fp.neg x3)) (fp.min (fp.neg x7) (fp.add RNE x3 x6))) (fp.div RNE (fp.sqrt RNE (fp.mul RNE x0 x6)) (fp.add RNE (fp.add RNE x2 x3) (fp.max x4 x3)))) (fp.div RNE (fp.sub RNE (fp.div RNE (fp.add RNE x2 x6) (fp.sub RNE x6 x3)) (fp.roundToIntegral RNE (fp.add RNE x9 x2))) (fp.sqrt RNE (fp.sub RNE (fp.abs x8) (fp.add RNE x2 x3)))))) (fp.add RNE (fp.roundToIntegral RNE (fp.div RNE (fp.add RNE (fp.add RNE x0 x4) (fp.div RNE (fp.sqrt RNE x4) (fp.neg x7))) (fp.sqrt RNE (fp.add RNE x2 x6)))) (fp.min (fp.abs (fp.roundToIntegral RNE (fp.sub RNE (fp.neg x7) (fp.min x6 x4)))) (fp.min (fp.abs (fp.sub RNE (fp.div RNE x6 x1) (fp.neg x1))) (fp.abs (fp.max (fp.max x1 x2) (fp.roundToIntegral RNE x3))))))))(check-sat)