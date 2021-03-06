;  time  = {'mathsat': 32.66736316680908, 'z3': 600}
;  terms = 95
;  score = 567.3326368331909
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
(assert (fp.gt (fp.mul RNE (fp.sqrt RNE (fp.div RNE (fp.min (fp.sqrt RNE x7) (fp.neg x6)) (fp.roundToIntegral RNE (fp.roundToIntegral RNE (fp.div RNE x5 x5))))) (fp.add RNE (fp.sub RNE (fp.sqrt RNE (fp.sqrt RNE x2)) (fp.roundToIntegral RNE (fp.sub RNE x7 x7))) (fp.add RNE (fp.div RNE (fp.sub RNE x4 x3) (fp.add RNE x1 x1)) (fp.max (fp.div RNE x2 x7) (fp.sqrt RNE x8))))) (fp.mul RNE (fp.div RNE (fp.neg (fp.div RNE (fp.div RNE x1 x3) (fp.mul RNE x8 x9))) (fp.div RNE (fp.div RNE (fp.abs (fp.div RNE x7 x2)) (fp.mul RNE (fp.max x8 x6) (fp.mul RNE x3 x0))) (fp.neg (fp.roundToIntegral RNE (fp.mul RNE x5 x8))))) (fp.div RNE (fp.div RNE (fp.roundToIntegral RNE (fp.mul RNE x1 x0)) (fp.add RNE (fp.neg (fp.neg x4)) (fp.abs (fp.mul RNE x6 x9)))) (fp.mul RNE (fp.div RNE (fp.mul RNE x9 x1) (fp.abs x8)) (fp.max (fp.abs (fp.min x8 x2)) (fp.neg (fp.min x9 x6))))))))(check-sat)