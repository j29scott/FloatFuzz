;  time  = {'z3': 600, 'mathsat': 7.12307071685791}
;  terms = 69
;  score = 592.8769292831421
;  stdout= {'z3': 'timeout\n', 'mathsat': 'sat'}
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
(assert (fp.isPositive (fp.mul RNE (fp.sub RNE (fp.div RNE (fp.mul RNE (fp.div RNE x9 (fp.neg x4)) (fp.roundToIntegral RNE (fp.div RNE x2 x9))) (fp.roundToIntegral RNE (fp.mul RNE x8 x7))) (fp.div RNE (fp.max (fp.max x6 x1) (fp.div RNE x3 (fp.neg x1))) (fp.mul RNE (fp.mul RNE (fp.mul RNE x6 x2) (fp.add RNE x0 x0)) (fp.roundToIntegral RNE (fp.neg x2))))) (fp.div RNE (fp.add RNE (fp.mul RNE (fp.mul RNE x8 x0) (fp.add RNE (fp.neg x2) (fp.mul RNE x9 x2))) (fp.div RNE (fp.add RNE x9 x5) (fp.div RNE x5 x7))) (fp.mul RNE (fp.div RNE (fp.mul RNE x0 x8) (fp.div RNE x5 x9)) (fp.div RNE (fp.sqrt RNE x8) (fp.sqrt RNE x1)))))))(check-sat)