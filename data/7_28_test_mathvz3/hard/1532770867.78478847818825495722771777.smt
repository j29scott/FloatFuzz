;  time  = {'mathsat': 63.59209632873535, 'z3': 600}
;  terms = 81
;  score = 536.4079036712646
;  stdout= {'mathsat': 'sat', 'z3': 'timeout\n'}
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
(assert (fp.isSubnormal (fp.max (fp.add RNE (fp.max (fp.add RNE (fp.abs x5) (fp.add RNE (fp.max x8 x1) (fp.div RNE x1 x9))) (fp.min (fp.sub RNE (fp.div RNE x8 x5) (fp.div RNE x2 x6)) (fp.sqrt RNE (fp.max x5 x0)))) (fp.div RNE (fp.mul RNE (fp.add RNE (fp.neg x1) (fp.add RNE x5 x8)) (fp.div RNE (fp.neg x2) (fp.max x4 x4))) (fp.div RNE (fp.max (fp.roundToIntegral RNE x0) (fp.div RNE x9 x3)) (fp.div RNE (fp.mul RNE x5 x6) (fp.sub RNE x8 x2))))) (fp.div RNE (fp.add RNE (fp.mul RNE (fp.neg x1) (fp.div RNE x4 x1)) (fp.sub RNE (fp.mul RNE x4 (fp.roundToIntegral RNE x3)) (fp.mul RNE (fp.abs x2) (fp.div RNE x6 x6)))) (fp.roundToIntegral RNE (fp.sqrt RNE (fp.div RNE (fp.add RNE x4 x2) (fp.roundToIntegral RNE x1))))))))(check-sat)