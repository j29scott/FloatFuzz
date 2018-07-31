;  time  = {'mathsat': 14.933419227600098, 'z3': 600}
;  terms = 83
;  score = 585.0665807723999
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
(assert (fp.isSubnormal (fp.sub RNE (fp.max (fp.sqrt RNE (fp.mul RNE (fp.max x2 (fp.add RNE x0 x3)) (fp.roundToIntegral RNE x0))) (fp.min (fp.div RNE (fp.add RNE (fp.add RNE x0 x4) (fp.div RNE x4 x8)) (fp.max (fp.max x0 x7) (fp.mul RNE x2 x0))) (fp.max (fp.min (fp.mul RNE x0 x7) (fp.roundToIntegral RNE x2)) (fp.neg (fp.min x0 x4))))) (fp.mul RNE (fp.add RNE (fp.abs (fp.max x7 (fp.div RNE x1 x1))) (fp.mul RNE (fp.abs x2) (fp.div RNE (fp.div RNE x0 x0) (fp.roundToIntegral RNE x2)))) (fp.add RNE (fp.mul RNE (fp.roundToIntegral RNE (fp.div RNE x3 x6)) (fp.div RNE (fp.max x1 x5) (fp.sub RNE x2 x4))) (fp.max (fp.div RNE (fp.max x2 x7) (fp.mul RNE x9 x8)) (fp.div RNE (fp.add RNE x3 x7) (fp.roundToIntegral RNE x4))))))))(check-sat)