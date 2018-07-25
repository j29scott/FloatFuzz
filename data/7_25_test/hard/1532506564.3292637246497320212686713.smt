;  time  = {'z3': 600}
;  terms = 93
;  score = 600
;  stdout= {'z3': 'timeout\n'}
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
(assert (fp.lt (fp.div RNE (fp.div RNE (fp.neg (fp.mul RNE (fp.min x2 x1) (fp.abs x0))) (fp.mul RNE (fp.max (fp.mul RNE x0 x4) (fp.div RNE x0 x8)) (fp.div RNE (fp.add RNE x0 x0) (fp.sub RNE x5 x0)))) (fp.div RNE (fp.sub RNE (fp.max (fp.mul RNE x8 x9) (fp.div RNE x3 x2)) (fp.min (fp.div RNE x6 x9) (fp.max x8 x8))) (fp.div RNE (fp.max (fp.div RNE x9 x8) (fp.mul RNE x7 x3)) (fp.add RNE (fp.min x4 x5) (fp.abs x6))))) (fp.max (fp.mul RNE (fp.min (fp.mul RNE (fp.sqrt RNE x6) (fp.mul RNE x2 x3)) (fp.roundToIntegral RNE (fp.max x9 x9))) (fp.div RNE (fp.abs (fp.mul RNE x4 x9)) (fp.div RNE (fp.div RNE x0 x2) (fp.sqrt RNE x3)))) (fp.div RNE (fp.roundToIntegral RNE (fp.roundToIntegral RNE (fp.min x2 x9))) (fp.div RNE (fp.sqrt RNE (fp.abs x8)) (fp.roundToIntegral RNE (fp.sub RNE x7 x0)))))))(check-sat)