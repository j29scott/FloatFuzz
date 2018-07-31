;  time  = {'z3': 553.767}
;  terms = 57
;  score = 553.767
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
(assert (fp.eq (fp.div RNE (fp.max (fp.abs (fp.sub RNE (fp.add RNE x7 x6) (fp.sqrt RNE x5))) (fp.div RNE (fp.mul RNE (fp.abs x9) (fp.mul RNE x6 x4)) (fp.add RNE (fp.div RNE x0 x2) (fp.min x8 x8)))) (fp.mul RNE (fp.neg (fp.mul RNE (fp.roundToIntegral RNE x6) (fp.abs x3))) (fp.roundToIntegral RNE (fp.roundToIntegral RNE (fp.div RNE x2 x9))))) (fp.sqrt RNE (fp.add RNE (fp.mul RNE (fp.sqrt RNE (fp.max x8 x1)) (fp.max (fp.mul RNE x3 x6) (fp.mul RNE x0 x1))) (fp.sqrt RNE (fp.add RNE (fp.sqrt RNE x6) (fp.div RNE x5 x4)))))))(check-sat)