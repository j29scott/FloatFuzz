;  time  = {'z3': 600}
;  terms = 77
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
(assert (fp.eq (fp.sub RNE (fp.add RNE (fp.sub RNE (fp.div RNE (fp.neg x4) (fp.div RNE x4 x2)) (fp.neg (fp.max x0 x1))) (fp.max (fp.div RNE (fp.div RNE x6 x4) (fp.div RNE x6 x0)) (fp.abs (fp.min x6 x4)))) (fp.div RNE (fp.max (fp.div RNE (fp.abs x5) (fp.sqrt RNE x9)) (fp.mul RNE (fp.div RNE x0 (fp.div RNE x7 x8)) (fp.abs x1))) (fp.roundToIntegral RNE (fp.add RNE (fp.neg (fp.min x8 x1)) (fp.mul RNE (fp.neg x2) (fp.div RNE x9 x1)))))) (fp.abs (fp.sub RNE (fp.mul RNE (fp.mul RNE (fp.div RNE x0 x6) (fp.abs x4)) (fp.add RNE (fp.div RNE x2 x4) (fp.neg x4))) (fp.add RNE (fp.roundToIntegral RNE (fp.mul RNE x3 x7)) (fp.sqrt RNE (fp.mul RNE x4 x2)))))))(check-sat)