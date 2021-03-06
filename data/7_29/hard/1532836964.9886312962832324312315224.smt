;  time  = {'z3': 600}
;  terms = 90
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
(assert (fp.eq (fp.div RNE (fp.div RNE (fp.mul RNE (fp.neg (fp.roundToIntegral RNE x9)) (fp.max (fp.neg x2) (fp.div RNE (fp.add RNE x9 x3) (fp.neg x9)))) (fp.div RNE (fp.roundToIntegral RNE (fp.div RNE x1 (fp.sqrt RNE x6))) (fp.sub RNE (fp.neg x8) (fp.sub RNE x2 x1)))) (fp.max (fp.neg (fp.abs (fp.neg x6))) (fp.neg (fp.roundToIntegral RNE (fp.div RNE (fp.div RNE x4 x4) (fp.div RNE x8 x9)))))) (fp.mul RNE (fp.sub RNE (fp.div RNE (fp.mul RNE (fp.div RNE x9 x7) (fp.min (fp.min x6 x6) (fp.neg x7))) (fp.max (fp.abs x9) (fp.div RNE x8 x6))) (fp.abs (fp.div RNE (fp.div RNE x1 x1) (fp.div RNE x3 x1)))) (fp.max (fp.roundToIntegral RNE (fp.mul RNE (fp.abs x3) (fp.min x1 x7))) (fp.min (fp.add RNE (fp.abs x7) (fp.sub RNE x4 x5)) (fp.div RNE (fp.div RNE x5 x8) (fp.sqrt RNE x8)))))))(check-sat)