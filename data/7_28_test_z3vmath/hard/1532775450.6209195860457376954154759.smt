;  time  = {'z3': 600}
;  terms = 105
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
(assert (fp.gt (fp.mul RNE (fp.abs (fp.roundToIntegral RNE (fp.roundToIntegral RNE (fp.sqrt RNE x1)))) (fp.add RNE (fp.div RNE (fp.sub RNE (fp.max (fp.abs x7) (fp.abs x4)) (fp.max (fp.mul RNE x9 x6) (fp.div RNE x7 x9))) (fp.neg (fp.max (fp.add RNE x0 x7) (fp.mul RNE x9 x3)))) (fp.sub RNE (fp.max (fp.sub RNE (fp.div RNE x8 x1) (fp.mul RNE x6 x9)) (fp.abs (fp.div RNE x7 x0))) (fp.roundToIntegral RNE (fp.sqrt RNE (fp.max x2 x4)))))) (fp.mul RNE (fp.mul RNE (fp.sqrt RNE (fp.div RNE (fp.max x3 x3) (fp.abs x7))) (fp.max (fp.sub RNE (fp.sub RNE x7 x9) (fp.sqrt RNE (fp.max x7 x5))) (fp.div RNE (fp.mul RNE x1 x0) (fp.add RNE (fp.mul RNE x1 x3) (fp.abs x4))))) (fp.add RNE (fp.abs (fp.mul RNE (fp.add RNE (fp.mul RNE x5 x3) (fp.abs x9)) (fp.roundToIntegral RNE (fp.sqrt RNE x1)))) (fp.div RNE (fp.add RNE (fp.abs (fp.div RNE x2 x3)) (fp.max (fp.mul RNE x9 x2) (fp.roundToIntegral RNE x4))) (fp.roundToIntegral RNE (fp.sqrt RNE (fp.add RNE x0 x3))))))))(check-sat)