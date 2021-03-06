;  time  = {'mathsat': 25.843665838241577, 'z3': 600}
;  terms = 117
;  score = 574.1563341617584
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
(assert (fp.leq (fp.mul RNE (fp.abs (fp.abs (fp.div RNE (fp.sqrt RNE x9) (fp.add RNE (fp.mul RNE x1 x5) (fp.add RNE x7 x0))))) (fp.add RNE (fp.div RNE (fp.div RNE (fp.sub RNE (fp.mul RNE x5 x7) (fp.mul RNE x8 x2)) (fp.max (fp.sqrt RNE x2) (fp.min x4 x9))) (fp.min (fp.max (fp.min x7 x3) (fp.min x8 x9)) (fp.mul RNE (fp.sqrt RNE x4) (fp.sub RNE x3 x7)))) (fp.neg (fp.min (fp.roundToIntegral RNE (fp.div RNE x0 x5)) (fp.roundToIntegral RNE (fp.sqrt RNE x7)))))) (fp.div RNE (fp.sub RNE (fp.mul RNE (fp.mul RNE (fp.div RNE x9 x7) (fp.sub RNE (fp.mul RNE x1 x1) (fp.sqrt RNE x4))) (fp.div RNE (fp.sqrt RNE (fp.div RNE x4 x8)) (fp.roundToIntegral RNE (fp.max x6 x3)))) (fp.div RNE (fp.mul RNE (fp.max x1 x2) (fp.abs x8)) (fp.sub RNE (fp.sqrt RNE x3) (fp.sub RNE x7 (fp.sqrt RNE x5))))) (fp.sqrt RNE (fp.sub RNE (fp.div RNE (fp.roundToIntegral RNE (fp.add RNE x9 x0)) (fp.sub RNE (fp.add RNE x8 x8) (fp.sqrt RNE x3))) (fp.max (fp.sub RNE (fp.add RNE x1 x8) (fp.add RNE x2 x5)) (fp.sub RNE (fp.sub RNE x1 x3) (fp.sub RNE x3 x5))))))))(check-sat)