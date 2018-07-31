;  time  = {'mathsat': 153.21553468704224, 'z3': 600}
;  terms = 118
;  score = 446.78446531295776
;  stdout= {'mathsat': 'sat', 'z3': 'timeout\n'}
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
(assert (fp.eq (fp.add RNE (fp.div RNE (fp.sub RNE (fp.add RNE (fp.sub RNE x0 x8) (fp.sqrt RNE x7)) (fp.sub RNE (fp.roundToIntegral RNE x7) (fp.div RNE x9 x8))) (fp.add RNE (fp.add RNE (fp.sqrt RNE (fp.roundToIntegral RNE x9)) (fp.add RNE (fp.neg x4) (fp.min x3 x0))) (fp.max (fp.min (fp.roundToIntegral RNE x7) (fp.max x9 x9)) (fp.mul RNE (fp.div RNE x6 x0) (fp.max x5 x2))))) (fp.abs (fp.add RNE (fp.roundToIntegral RNE (fp.mul RNE x8 x4)) (fp.sqrt RNE (fp.mul RNE x5 (fp.mul RNE x6 x9)))))) (fp.add RNE (fp.sub RNE (fp.div RNE (fp.max (fp.sub RNE x4 x3) (fp.neg x8)) (fp.sqrt RNE (fp.div RNE (fp.sub RNE x7 x1) (fp.sqrt RNE x3)))) (fp.max (fp.sub RNE (fp.add RNE x0 x3) (fp.add RNE x7 (fp.max x7 x0))) (fp.mul RNE (fp.sub RNE x1 (fp.roundToIntegral RNE x8)) (fp.div RNE x3 x8)))) (fp.div RNE (fp.neg (fp.roundToIntegral RNE (fp.sub RNE x9 x8))) (fp.sub RNE (fp.sub RNE (fp.sub RNE (fp.roundToIntegral RNE x0) (fp.sub RNE x4 x2)) (fp.div RNE (fp.min x0 x9) (fp.sub RNE x3 x1))) (fp.min (fp.max (fp.add RNE x6 x5) (fp.abs x1)) (fp.roundToIntegral RNE (fp.sqrt RNE x2))))))))(check-sat)