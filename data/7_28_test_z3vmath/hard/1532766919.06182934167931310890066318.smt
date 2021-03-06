;  time  = {'z3': 581.046}
;  terms = 86
;  score = 581.046
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
(assert (fp.eq (fp.sub RNE (fp.mul RNE (fp.div RNE (fp.roundToIntegral RNE (fp.div RNE x4 x6)) (fp.neg (fp.abs x0))) (fp.sub RNE (fp.add RNE (fp.sub RNE x0 x3) (fp.add RNE x2 x9)) (fp.sub RNE (fp.add RNE x8 x9) (fp.max (fp.div RNE x0 x2) (fp.div RNE x3 x5))))) (fp.add RNE (fp.abs (fp.neg (fp.sub RNE x6 (fp.roundToIntegral RNE x7)))) (fp.sub RNE (fp.sub RNE (fp.sub RNE x4 x8) (fp.div RNE x4 x7)) (fp.sub RNE (fp.neg (fp.sqrt RNE x7)) (fp.roundToIntegral RNE (fp.min x6 x4)))))) (fp.mul RNE (fp.mul RNE (fp.div RNE (fp.abs (fp.roundToIntegral RNE x4)) (fp.div RNE (fp.roundToIntegral RNE x8) (fp.div RNE (fp.max x3 x2) (fp.neg x5)))) (fp.add RNE (fp.neg (fp.abs x1)) (fp.sub RNE (fp.sub RNE x7 x1) (fp.abs x6)))) (fp.neg (fp.sqrt RNE (fp.mul RNE (fp.roundToIntegral RNE x7) (fp.mul RNE x1 x2)))))))(check-sat)