;  time  = {'z3': 600}
;  terms = 100
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
(assert (fp.lt (fp.mul RNE (fp.add RNE (fp.div RNE (fp.sub RNE (fp.div RNE x5 x1) (fp.abs x8)) (fp.mul RNE (fp.abs x1) (fp.roundToIntegral RNE x1))) (fp.div RNE (fp.div RNE (fp.abs x9) (fp.add RNE (fp.neg x5) (fp.abs x0))) (fp.sub RNE (fp.mul RNE x9 x9) (fp.div RNE x4 (fp.mul RNE x8 x9))))) (fp.abs (fp.abs (fp.div RNE (fp.div RNE x9 (fp.div RNE x0 x6)) (fp.roundToIntegral RNE (fp.sub RNE x2 x7)))))) (fp.sub RNE (fp.max (fp.mul RNE (fp.min (fp.div RNE x9 x0) (fp.abs x3)) (fp.div RNE (fp.min x0 x3) (fp.mul RNE x0 x4))) (fp.sub RNE (fp.sub RNE (fp.abs x8) (fp.add RNE x7 x2)) (fp.sub RNE (fp.min x7 x7) (fp.div RNE x9 (fp.mul RNE x6 x1))))) (fp.add RNE (fp.mul RNE (fp.abs (fp.abs x2)) (fp.div RNE (fp.add RNE x7 x6) (fp.roundToIntegral RNE x4))) (fp.sub RNE (fp.abs (fp.div RNE x7 x0)) (fp.div RNE (fp.div RNE x1 (fp.abs x4)) (fp.abs x4)))))))(check-sat)