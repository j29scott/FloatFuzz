;  time  = {'z3': 541.623}
;  terms = 72
;  score = 541.623
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
(assert (fp.leq (fp.sqrt RNE (fp.div RNE (fp.max (fp.sqrt RNE (fp.sqrt RNE x0)) (fp.sub RNE (fp.div RNE x0 (fp.neg x7)) (fp.mul RNE x7 (fp.div RNE x4 x2)))) (fp.sub RNE (fp.neg (fp.max (fp.roundToIntegral RNE x6) (fp.roundToIntegral RNE x4))) (fp.mul RNE (fp.mul RNE (fp.abs x4) (fp.add RNE x0 x9)) (fp.div RNE (fp.abs x3) (fp.div RNE x1 x8)))))) (fp.roundToIntegral RNE (fp.mul RNE (fp.div RNE (fp.div RNE (fp.max x4 x3) (fp.div RNE x2 (fp.abs x3))) (fp.mul RNE (fp.add RNE (fp.mul RNE x1 x0) (fp.abs x2)) (fp.min (fp.min x2 x4) (fp.max x9 x9)))) (fp.min (fp.add RNE (fp.abs x7) (fp.roundToIntegral RNE x3)) (fp.neg (fp.sub RNE x2 x6)))))))(check-sat)