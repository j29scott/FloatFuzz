;  time  = {'z3': 587.822}
;  terms = 84
;  score = 587.822
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
(assert (fp.lt (fp.div RNE (fp.div RNE (fp.min (fp.sqrt RNE (fp.max x8 x3)) (fp.sub RNE (fp.abs x5) (fp.neg x1))) (fp.abs (fp.add RNE (fp.div RNE x5 x1) (fp.sub RNE x5 x5)))) (fp.div RNE (fp.add RNE (fp.max (fp.div RNE x4 x9) (fp.sqrt RNE x0)) (fp.add RNE (fp.add RNE x0 x7) (fp.sub RNE x4 x5))) (fp.max (fp.add RNE (fp.roundToIntegral RNE x0) (fp.div RNE x6 x3)) (fp.mul RNE (fp.div RNE x2 x3) (fp.min x6 x0))))) (fp.div RNE (fp.neg (fp.abs (fp.mul RNE (fp.sub RNE x2 x0) (fp.neg x5)))) (fp.max (fp.min (fp.div RNE (fp.min x5 x7) (fp.div RNE x4 x3)) (fp.abs (fp.mul RNE x3 x9))) (fp.div RNE (fp.roundToIntegral RNE (fp.max x7 x4)) (fp.sub RNE (fp.max x1 x9) (fp.div RNE x4 x0)))))))(check-sat)