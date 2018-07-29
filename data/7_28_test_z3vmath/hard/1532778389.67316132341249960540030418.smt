;  time  = {'z3': 600}
;  terms = 99
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
(assert (fp.eq (fp.mul RNE (fp.div RNE (fp.roundToIntegral RNE (fp.min (fp.min x8 x5) (fp.abs x1))) (fp.sub RNE (fp.min (fp.add RNE x0 x7) (fp.div RNE (fp.sub RNE x0 x0) (fp.min x9 x2))) (fp.max (fp.max x4 x2) (fp.div RNE x8 x2)))) (fp.sub RNE (fp.max (fp.add RNE (fp.add RNE x4 x9) (fp.mul RNE x4 x6)) (fp.max (fp.abs x0) (fp.abs x1))) (fp.add RNE (fp.neg (fp.abs x3)) (fp.add RNE (fp.min x1 x2) (fp.mul RNE x2 x9))))) (fp.div RNE (fp.sub RNE (fp.max (fp.max (fp.div RNE x1 x7) (fp.roundToIntegral RNE x2)) (fp.sqrt RNE (fp.min x4 x5))) (fp.roundToIntegral RNE (fp.mul RNE (fp.neg x6) (fp.neg x1)))) (fp.add RNE (fp.min (fp.div RNE (fp.max x8 x9) (fp.sqrt RNE x6)) (fp.abs (fp.sub RNE x5 x5))) (fp.div RNE (fp.div RNE (fp.max x6 x0) (fp.neg x3)) (fp.div RNE (fp.div RNE x6 x8) (fp.mul RNE x4 x1)))))))(check-sat)