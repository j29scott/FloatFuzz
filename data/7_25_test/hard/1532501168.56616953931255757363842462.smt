;  time  = {'z3': 600}
;  terms = 66
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
(assert (fp.isZero (fp.div RNE (fp.div RNE (fp.abs (fp.abs (fp.abs x9))) (fp.sub RNE (fp.neg (fp.mul RNE (fp.max x4 x1) (fp.mul RNE x1 x1))) (fp.div RNE (fp.div RNE (fp.sub RNE x4 x5) (fp.min x2 x9)) (fp.neg (fp.div RNE x0 x2))))) (fp.div RNE (fp.mul RNE (fp.roundToIntegral RNE (fp.max (fp.roundToIntegral RNE x6) (fp.mul RNE x0 x3))) (fp.max (fp.mul RNE (fp.add RNE x7 x8) (fp.max x3 x9)) (fp.max (fp.div RNE x2 x8) (fp.add RNE x5 x5)))) (fp.div RNE (fp.neg (fp.neg (fp.div RNE x8 x1))) (fp.sqrt RNE (fp.div RNE (fp.mul RNE x9 x3) (fp.div RNE x4 x7))))))))(check-sat)