;  time  = {'z3': 600, 'mathsat': 7.692297697067261}
;  terms = 96
;  score = 592.3077023029327
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
(assert (fp.lt (fp.div RNE (fp.mul RNE (fp.neg (fp.div RNE (fp.min x0 x1) (fp.sub RNE x0 x1))) (fp.mul RNE (fp.min (fp.sqrt RNE x1) (fp.neg x5)) (fp.mul RNE (fp.add RNE (fp.add RNE x1 x3) (fp.max x5 x2)) (fp.mul RNE (fp.sqrt RNE x4) (fp.abs x3))))) (fp.add RNE (fp.mul RNE (fp.div RNE (fp.mul RNE x1 (fp.mul RNE x5 x3)) (fp.abs x0)) (fp.neg (fp.min x9 x7))) (fp.mul RNE (fp.roundToIntegral RNE (fp.sqrt RNE x2)) (fp.mul RNE (fp.mul RNE x7 (fp.sqrt RNE x8)) (fp.sub RNE x2 x3))))) (fp.div RNE (fp.add RNE (fp.sqrt RNE (fp.min (fp.abs x0) (fp.min x3 x4))) (fp.roundToIntegral RNE (fp.sub RNE (fp.sqrt RNE (fp.mul RNE x0 x9)) (fp.mul RNE (fp.add RNE x9 x8) (fp.roundToIntegral RNE x6))))) (fp.sqrt RNE (fp.max (fp.add RNE (fp.add RNE x1 x1) (fp.max (fp.sub RNE x3 x0) (fp.sqrt RNE x0))) (fp.add RNE (fp.min x4 x9) (fp.add RNE x2 x1)))))))(check-sat)