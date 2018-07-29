;  time  = {'z3': 600}
;  terms = 65
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
(assert (fp.isPositive (fp.div RNE (fp.add RNE (fp.div RNE (fp.add RNE (fp.div RNE x6 x4) (fp.div RNE x5 (fp.div RNE x1 x6))) (fp.add RNE (fp.div RNE (fp.neg x0) (fp.abs x4)) (fp.add RNE (fp.div RNE x6 x9) (fp.mul RNE x7 x3)))) (fp.max (fp.div RNE (fp.roundToIntegral RNE x1) (fp.neg x9)) (fp.mul RNE (fp.abs x9) (fp.div RNE x0 x2)))) (fp.sub RNE (fp.add RNE (fp.add RNE (fp.mul RNE x8 x6) (fp.abs x0)) (fp.abs (fp.div RNE x1 x0))) (fp.add RNE (fp.div RNE (fp.add RNE x0 x4) (fp.sqrt RNE x7)) (fp.div RNE (fp.abs (fp.abs x7)) (fp.sqrt RNE (fp.div RNE x6 x4))))))))(check-sat)