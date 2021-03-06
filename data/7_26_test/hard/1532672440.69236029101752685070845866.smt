;  time  = {'z3': 583.49, 'mathsat': 69.07862114906311}
;  terms = 67
;  score = 514.4113788509369
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
(assert (fp.gt (fp.mul RNE (fp.add RNE (fp.sub RNE (fp.mul RNE (fp.div RNE x3 x6) (fp.min (fp.mul RNE x5 x7) (fp.sqrt RNE x9))) (fp.sqrt RNE (fp.min x6 x2))) (fp.roundToIntegral RNE (fp.div RNE (fp.div RNE x3 x5) (fp.roundToIntegral RNE x0)))) (fp.min (fp.sqrt RNE (fp.roundToIntegral RNE (fp.sqrt RNE x7))) (fp.div RNE (fp.add RNE (fp.roundToIntegral RNE x7) (fp.min x4 x5)) (fp.add RNE (fp.roundToIntegral RNE x4) (fp.div RNE x3 x6))))) (fp.add RNE (fp.sqrt RNE (fp.div RNE (fp.div RNE (fp.mul RNE x8 x5) (fp.roundToIntegral RNE (fp.sqrt RNE x1))) (fp.sqrt RNE (fp.roundToIntegral RNE x5)))) (fp.sqrt RNE (fp.div RNE (fp.sub RNE (fp.min x5 x4) (fp.sqrt RNE x5)) (fp.sqrt RNE (fp.sqrt RNE x4)))))))(check-sat)