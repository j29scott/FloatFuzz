;  time  = {'mathsat': 31.224430322647095, 'z3': 600}
;  terms = 122
;  score = 568.7755696773529
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
(assert (fp.lt (fp.div RNE (fp.sub RNE (fp.neg (fp.max (fp.div RNE x3 x4) (fp.sub RNE x7 x8))) (fp.sqrt RNE (fp.div RNE (fp.sub RNE x2 x0) (fp.sqrt RNE x7)))) (fp.sub RNE (fp.div RNE (fp.add RNE (fp.sqrt RNE x2) (fp.sqrt RNE x7)) (fp.div RNE (fp.sub RNE x9 x6) (fp.div RNE x3 (fp.sub RNE x6 x7)))) (fp.neg (fp.max (fp.div RNE (fp.min x2 x7) (fp.roundToIntegral RNE x2)) (fp.sub RNE (fp.roundToIntegral RNE x7) (fp.min x1 x6)))))) (fp.min (fp.div RNE (fp.min (fp.min (fp.abs x8) (fp.div RNE x9 x5)) (fp.roundToIntegral RNE (fp.min (fp.abs x8) (fp.div RNE x5 x3)))) (fp.add RNE (fp.neg (fp.min x8 x1)) (fp.min (fp.sqrt RNE x8) (fp.min x7 (fp.min x9 x7))))) (fp.min (fp.add RNE (fp.min (fp.neg (fp.mul RNE x8 x4)) (fp.roundToIntegral RNE (fp.roundToIntegral RNE x2))) (fp.sqrt RNE (fp.div RNE (fp.div RNE x6 x0) (fp.add RNE x4 x8)))) (fp.min (fp.max (fp.sub RNE (fp.div RNE x4 x8) (fp.sub RNE x1 x2)) (fp.min (fp.add RNE x6 x1) (fp.div RNE x3 x2))) (fp.min (fp.abs (fp.roundToIntegral RNE x3)) (fp.max (fp.div RNE x2 x8) (fp.min x6 x3))))))))(check-sat)