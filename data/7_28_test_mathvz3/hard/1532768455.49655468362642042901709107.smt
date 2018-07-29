;  time  = {'z3': 565.27, 'mathsat': 12.20194935798645}
;  terms = 67
;  score = 553.0680506420135
;  stdout= {'z3': 'sat\n', 'mathsat': 'sat'}
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
(assert (fp.isNormal (fp.max (fp.neg (fp.mul RNE (fp.mul RNE (fp.sub RNE x5 x8) (fp.div RNE (fp.mul RNE x1 x6) (fp.mul RNE x7 x7))) (fp.max (fp.mul RNE (fp.div RNE x5 x4) (fp.roundToIntegral RNE x6)) (fp.max (fp.mul RNE x9 x7) (fp.roundToIntegral RNE x4))))) (fp.mul RNE (fp.mul RNE (fp.mul RNE (fp.mul RNE x0 (fp.abs x4)) (fp.max x7 (fp.mul RNE x1 x6))) (fp.neg (fp.max x7 (fp.sub RNE x8 x7)))) (fp.max (fp.div RNE (fp.roundToIntegral RNE x8) (fp.mul RNE x3 (fp.min x4 x9))) (fp.mul RNE (fp.mul RNE (fp.mul RNE x9 x4) (fp.div RNE x2 x3)) (fp.sqrt RNE (fp.mul RNE x2 x7))))))))(check-sat)