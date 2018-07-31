;  time  = {'z3': 568.029}
;  terms = 80
;  score = 568.029
;  stdout= {'z3': 'sat\n'}
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
(assert (fp.isSubnormal (fp.mul RNE (fp.mul RNE (fp.mul RNE (fp.mul RNE (fp.mul RNE x8 x0) (fp.div RNE (fp.sub RNE x0 x7) (fp.sub RNE x3 x5))) (fp.max (fp.mul RNE (fp.min x1 x8) (fp.mul RNE x1 x2)) (fp.mul RNE (fp.mul RNE x4 x1) (fp.mul RNE x6 x1)))) (fp.abs (fp.mul RNE (fp.roundToIntegral RNE x6) (fp.mul RNE (fp.mul RNE x5 x8) (fp.mul RNE x5 x3))))) (fp.div RNE (fp.neg (fp.add RNE (fp.mul RNE (fp.mul RNE x3 x7) (fp.abs x0)) (fp.sub RNE (fp.mul RNE x5 x0) (fp.add RNE x9 x8)))) (fp.add RNE (fp.sub RNE (fp.sub RNE (fp.div RNE x8 x8) (fp.max x4 x3)) (fp.roundToIntegral RNE (fp.neg x1))) (fp.mul RNE (fp.abs (fp.min x0 x6)) (fp.mul RNE (fp.sub RNE x8 x4) (fp.sqrt RNE x8))))))))(check-sat)