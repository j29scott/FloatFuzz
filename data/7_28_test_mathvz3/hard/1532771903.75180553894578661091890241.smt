;  time  = {'mathsat': 41.239985704422, 'z3': 600}
;  terms = 87
;  score = 558.760014295578
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
(assert (fp.gt (fp.add RNE (fp.roundToIntegral RNE (fp.min (fp.neg (fp.mul RNE x5 x7)) (fp.roundToIntegral RNE (fp.div RNE x3 (fp.neg x7))))) (fp.neg (fp.sqrt RNE (fp.neg (fp.neg x6))))) (fp.div RNE (fp.div RNE (fp.add RNE (fp.sub RNE (fp.mul RNE x4 x4) (fp.mul RNE x4 (fp.neg x7))) (fp.mul RNE (fp.roundToIntegral RNE x4) (fp.div RNE (fp.div RNE x6 x7) (fp.abs x0)))) (fp.neg (fp.div RNE (fp.div RNE (fp.sub RNE x1 x6) (fp.neg x7)) (fp.div RNE (fp.div RNE x8 x9) (fp.sub RNE x1 x6))))) (fp.div RNE (fp.mul RNE (fp.max (fp.min x4 x9) (fp.neg x8)) (fp.div RNE (fp.mul RNE x9 (fp.mul RNE x2 x8)) (fp.add RNE (fp.add RNE x2 x8) (fp.add RNE x7 x3)))) (fp.roundToIntegral RNE (fp.mul RNE (fp.abs (fp.div RNE x6 x3)) (fp.div RNE (fp.max x9 x6) (fp.div RNE x2 x7))))))))(check-sat)