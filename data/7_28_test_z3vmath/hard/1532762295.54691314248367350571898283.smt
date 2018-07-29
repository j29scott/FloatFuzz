;  time  = {'z3': 600}
;  terms = 87
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
(assert (fp.eq (fp.add RNE (fp.mul RNE (fp.mul RNE (fp.max (fp.sqrt RNE x1) (fp.neg x5)) (fp.sub RNE (fp.mul RNE x5 x1) (fp.sqrt RNE x0))) (fp.div RNE (fp.mul RNE (fp.add RNE x1 x3) (fp.abs x8)) (fp.max (fp.add RNE x6 x3) (fp.neg x0)))) (fp.add RNE (fp.div RNE (fp.neg (fp.mul RNE x3 x3)) (fp.neg (fp.add RNE x9 x8))) (fp.mul RNE (fp.div RNE (fp.div RNE x7 x0) (fp.neg x7)) (fp.abs (fp.neg x1))))) (fp.mul RNE (fp.div RNE (fp.roundToIntegral RNE (fp.sub RNE (fp.max x4 x6) (fp.abs x3))) (fp.sub RNE (fp.div RNE (fp.abs x6) (fp.neg x2)) (fp.max (fp.max x3 x1) (fp.neg x8)))) (fp.min (fp.sub RNE (fp.abs (fp.roundToIntegral RNE x3)) (fp.div RNE (fp.roundToIntegral RNE x9) (fp.add RNE x6 x4))) (fp.neg (fp.max (fp.neg x4) (fp.mul RNE x9 x5)))))))(check-sat)