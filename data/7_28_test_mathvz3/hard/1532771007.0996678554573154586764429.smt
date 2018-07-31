;  time  = {'mathsat': 5.147122621536255, 'z3': 546.431}
;  terms = 173
;  score = 541.2838773784638
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
(assert (fp.eq (fp.mul RNE (fp.min (fp.roundToIntegral RNE (fp.mul RNE (fp.sqrt RNE x6) (fp.mul RNE (fp.sqrt RNE x8) (fp.max x5 x4)))) (fp.mul RNE (fp.mul RNE (fp.sub RNE x3 x7) (fp.min (fp.sub RNE x2 x4) (fp.neg x6))) (fp.neg (fp.add RNE (fp.mul RNE x8 x6) (fp.abs x0))))) (fp.add RNE (fp.sub RNE (fp.add RNE (fp.sub RNE (fp.div RNE x4 x8) (fp.max x9 x0)) (fp.add RNE (fp.max x2 x4) (fp.add RNE x3 x5))) (fp.sqrt RNE (fp.mul RNE (fp.mul RNE x1 x9) (fp.neg x9)))) (fp.max (fp.div RNE (fp.min (fp.div RNE x0 x3) (fp.sub RNE x4 x2)) (fp.div RNE (fp.div RNE x4 x9) (fp.mul RNE x0 x5))) (fp.sub RNE (fp.add RNE (fp.max x7 x8) (fp.sub RNE x9 x0)) (fp.max (fp.mul RNE x9 x2) (fp.sub RNE x4 x2)))))) (fp.min (fp.mul RNE (fp.min (fp.mul RNE (fp.min x4 (fp.sub RNE x9 x8)) (fp.roundToIntegral RNE (fp.min x2 x1))) (fp.abs (fp.min x0 (fp.add RNE x3 x9)))) (fp.max (fp.div RNE (fp.min (fp.neg x8) (fp.min x8 x3)) (fp.mul RNE (fp.sub RNE x7 x3) (fp.mul RNE x0 x9))) (fp.add RNE (fp.roundToIntegral RNE (fp.roundToIntegral RNE x4)) (fp.max (fp.mul RNE x3 x0) (fp.sub RNE x6 x5))))) (fp.add RNE (fp.mul RNE (fp.mul RNE (fp.sub RNE x0 (fp.sub RNE x0 x2)) (fp.sub RNE x2 (fp.max x6 x9))) (fp.sub RNE (fp.max x7 (fp.mul RNE x3 x2)) (fp.mul RNE x3 x5))) (fp.sub RNE (fp.div RNE (fp.mul RNE x8 x7) (fp.min x1 (fp.mul RNE x7 x4))) (fp.sub RNE (fp.mul RNE x5 x2) (fp.mul RNE (fp.roundToIntegral RNE x0) (fp.sub RNE x7 x6))))))))(check-sat)