;  time  = {'z3': 600}
;  terms = 92
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
(assert (fp.geq (fp.min (fp.min (fp.div RNE (fp.add RNE (fp.neg x1) (fp.neg x0)) (fp.abs (fp.div RNE x8 x6))) (fp.abs (fp.neg (fp.div RNE x2 x1)))) (fp.div RNE (fp.min (fp.min (fp.div RNE x1 x4) (fp.sqrt RNE x4)) (fp.mul RNE (fp.abs x1) (fp.min x3 x0))) (fp.roundToIntegral RNE (fp.add RNE (fp.max (fp.div RNE x2 x0) (fp.div RNE x3 x5)) (fp.abs (fp.abs x9)))))) (fp.div RNE (fp.abs (fp.abs (fp.div RNE (fp.roundToIntegral RNE x3) (fp.neg (fp.sqrt RNE x3))))) (fp.div RNE (fp.min (fp.sqrt RNE (fp.mul RNE (fp.roundToIntegral RNE x9) (fp.div RNE x6 x4))) (fp.add RNE (fp.max (fp.neg x3) (fp.roundToIntegral RNE x1)) (fp.mul RNE (fp.sqrt RNE x3) (fp.min x6 x7)))) (fp.min (fp.abs (fp.div RNE (fp.neg x0) (fp.neg x6))) (fp.max (fp.neg (fp.mul RNE x9 x2)) (fp.add RNE (fp.sub RNE x7 x4) (fp.abs x8))))))))(check-sat)