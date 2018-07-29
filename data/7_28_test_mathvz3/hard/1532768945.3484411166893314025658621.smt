;  time  = {'z3': 600, 'mathsat': 17.82542395591736}
;  terms = 169
;  score = 582.1745760440826
;  stdout= {'z3': 'timeout\n', 'mathsat': 'sat'}
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
(assert (fp.lt (fp.add RNE (fp.sub RNE (fp.sub RNE (fp.sub RNE (fp.abs x0) (fp.div RNE x0 (fp.roundToIntegral RNE x2))) (fp.min (fp.sub RNE x0 (fp.min x0 x3)) (fp.mul RNE x0 (fp.sub RNE x0 x6)))) (fp.mul RNE (fp.sub RNE (fp.mul RNE (fp.neg x2) (fp.neg x8)) (fp.sqrt RNE (fp.roundToIntegral RNE x8))) (fp.sub RNE (fp.mul RNE (fp.mul RNE x1 x7) (fp.sqrt RNE x1)) (fp.sub RNE (fp.mul RNE x4 x5) (fp.add RNE x8 x0))))) (fp.mul RNE (fp.neg (fp.sqrt RNE (fp.mul RNE (fp.add RNE x6 x8) (fp.mul RNE x7 x3)))) (fp.mul RNE (fp.add RNE (fp.abs (fp.div RNE x5 x1)) (fp.add RNE (fp.div RNE x1 x3) (fp.roundToIntegral RNE x5))) (fp.sub RNE (fp.add RNE (fp.sub RNE x7 x6) (fp.roundToIntegral RNE x1)) (fp.mul RNE (fp.sub RNE x1 x1) (fp.sqrt RNE x9)))))) (fp.mul RNE (fp.mul RNE (fp.div RNE (fp.div RNE (fp.div RNE x8 (fp.roundToIntegral RNE x8)) (fp.div RNE x6 x1)) (fp.sub RNE (fp.sub RNE (fp.abs x2) (fp.min x6 x5)) (fp.div RNE (fp.mul RNE x2 x5) (fp.add RNE x5 x9)))) (fp.max (fp.mul RNE (fp.roundToIntegral RNE (fp.sqrt RNE x4)) (fp.sub RNE (fp.mul RNE x7 x2) (fp.mul RNE x2 x5))) (fp.mul RNE (fp.sub RNE (fp.min x8 x0) (fp.mul RNE x4 x6)) (fp.div RNE (fp.min x3 x1) (fp.neg x4))))) (fp.mul RNE (fp.sub RNE (fp.div RNE (fp.div RNE x6 x4) (fp.sub RNE (fp.mul RNE x6 x3) (fp.roundToIntegral RNE x1))) (fp.sub RNE (fp.mul RNE x4 (fp.sqrt RNE x0)) (fp.min x3 x7))) (fp.mul RNE (fp.abs (fp.mul RNE (fp.roundToIntegral RNE x7) (fp.sqrt RNE x8))) (fp.sub RNE (fp.roundToIntegral RNE (fp.abs x5)) (fp.div RNE (fp.mul RNE x0 x6) (fp.roundToIntegral RNE x8))))))))(check-sat)