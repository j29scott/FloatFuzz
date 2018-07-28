;  time  = {'mathsat': 8.88996958732605, 'z3': 600}
;  terms = 67
;  score = 591.110030412674
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
(assert (fp.isNegative (fp.max (fp.div RNE (fp.div RNE (fp.div RNE (fp.max x6 x8) (fp.mul RNE x8 x5)) (fp.roundToIntegral RNE (fp.abs (fp.sub RNE x1 x4)))) (fp.div RNE (fp.div RNE (fp.add RNE (fp.mul RNE x0 x4) (fp.sqrt RNE x2)) (fp.div RNE (fp.add RNE x4 x3) (fp.div RNE x4 x1))) (fp.roundToIntegral RNE (fp.max (fp.add RNE x4 x6) (fp.roundToIntegral RNE x1))))) (fp.div RNE (fp.add RNE (fp.div RNE (fp.max x2 x3) (fp.abs x5)) (fp.add RNE (fp.div RNE x3 (fp.abs x8)) (fp.div RNE x7 x7))) (fp.div RNE (fp.mul RNE (fp.sqrt RNE (fp.sub RNE x0 x3)) (fp.abs (fp.abs x3))) (fp.roundToIntegral RNE (fp.abs (fp.roundToIntegral RNE x6))))))))(check-sat)