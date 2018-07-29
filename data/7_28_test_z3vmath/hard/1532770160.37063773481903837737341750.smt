;  time  = {'z3': 600}
;  terms = 108
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
(assert (fp.geq (fp.div RNE (fp.div RNE (fp.sub RNE (fp.sqrt RNE (fp.abs x4)) (fp.mul RNE (fp.neg x1) (fp.roundToIntegral RNE x9))) (fp.roundToIntegral RNE (fp.mul RNE (fp.abs (fp.min x4 x1)) (fp.neg (fp.add RNE x9 x8))))) (fp.sqrt RNE (fp.sqrt RNE (fp.abs (fp.max (fp.mul RNE x5 x4) (fp.roundToIntegral RNE x1)))))) (fp.mul RNE (fp.add RNE (fp.add RNE (fp.max (fp.abs x7) (fp.sqrt RNE x9)) (fp.add RNE (fp.abs x4) (fp.min x2 x3))) (fp.mul RNE (fp.div RNE (fp.sub RNE x4 (fp.sqrt RNE x5)) (fp.div RNE x8 x0)) (fp.mul RNE (fp.sub RNE (fp.div RNE x8 x1) (fp.abs x5)) (fp.neg (fp.mul RNE x7 x1))))) (fp.mul RNE (fp.sub RNE (fp.sub RNE (fp.abs (fp.div RNE x2 x7)) (fp.abs (fp.div RNE x4 x0))) (fp.roundToIntegral RNE (fp.div RNE (fp.mul RNE x0 x1) (fp.min x7 x1)))) (fp.div RNE (fp.mul RNE (fp.add RNE (fp.mul RNE x8 x7) (fp.sub RNE x8 x9)) (fp.mul RNE (fp.div RNE x6 x2) (fp.neg x8))) (fp.sub RNE (fp.neg (fp.min x4 x6)) (fp.abs (fp.sub RNE x9 x9))))))))(check-sat)