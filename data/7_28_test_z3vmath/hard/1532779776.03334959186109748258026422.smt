;  time  = {'z3': 558.643}
;  terms = 74
;  score = 558.643
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
(assert (fp.eq (fp.min (fp.min (fp.neg (fp.neg (fp.mul RNE x5 x4))) (fp.div RNE (fp.sqrt RNE (fp.max x8 x9)) (fp.max (fp.mul RNE x0 x4) (fp.sub RNE x5 x8)))) (fp.div RNE (fp.min (fp.mul RNE (fp.max x2 x2) (fp.add RNE x4 x3)) (fp.sub RNE (fp.abs x9) (fp.abs x6))) (fp.mul RNE (fp.abs (fp.mul RNE x5 x5)) (fp.abs (fp.roundToIntegral RNE x5))))) (fp.sub RNE (fp.add RNE (fp.abs (fp.div RNE (fp.add RNE x9 x7) (fp.add RNE x0 x8))) (fp.max (fp.div RNE (fp.add RNE x2 x1) (fp.sqrt RNE x4)) (fp.roundToIntegral RNE (fp.abs x8)))) (fp.roundToIntegral RNE (fp.add RNE (fp.mul RNE (fp.mul RNE x2 x2) (fp.neg x8)) (fp.roundToIntegral RNE (fp.div RNE x1 x2)))))))(check-sat)