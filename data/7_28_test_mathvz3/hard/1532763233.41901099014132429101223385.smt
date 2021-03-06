;  time  = {'mathsat': 64.212637424469, 'z3': 600}
;  terms = 131
;  score = 535.787362575531
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
(assert (fp.leq (fp.div RNE (fp.div RNE (fp.max (fp.roundToIntegral RNE (fp.max x2 x1)) (fp.max (fp.div RNE (fp.sub RNE x0 x2) (fp.neg x2)) (fp.mul RNE (fp.div RNE x3 x0) (fp.max x3 x3)))) (fp.div RNE (fp.mul RNE (fp.div RNE x3 (fp.neg x0)) (fp.sqrt RNE x3)) (fp.min (fp.mul RNE x6 x2) (fp.sub RNE x2 x3)))) (fp.sqrt RNE (fp.div RNE (fp.min (fp.neg (fp.mul RNE x6 x5)) (fp.mul RNE (fp.div RNE x8 x4) (fp.sub RNE x1 x7))) (fp.roundToIntegral RNE (fp.min (fp.add RNE x5 x4) (fp.max x5 x1)))))) (fp.add RNE (fp.div RNE (fp.div RNE (fp.div RNE (fp.max x5 (fp.div RNE x9 x1)) (fp.div RNE x2 (fp.roundToIntegral RNE x4))) (fp.add RNE (fp.add RNE (fp.div RNE x2 x2) (fp.sub RNE x2 x3)) (fp.abs (fp.abs x7)))) (fp.sub RNE (fp.add RNE (fp.roundToIntegral RNE x6) (fp.abs x8)) (fp.mul RNE (fp.sqrt RNE x0) (fp.add RNE x4 x4)))) (fp.min (fp.div RNE (fp.div RNE (fp.div RNE (fp.abs x5) (fp.max x0 x0)) (fp.mul RNE (fp.neg x4) (fp.sub RNE x7 x7))) (fp.sub RNE (fp.abs (fp.roundToIntegral RNE x9)) (fp.add RNE (fp.sqrt RNE x3) (fp.abs x8)))) (fp.neg (fp.min (fp.max (fp.neg x4) (fp.neg x3)) (fp.div RNE (fp.abs x6) (fp.neg x1))))))))(check-sat)