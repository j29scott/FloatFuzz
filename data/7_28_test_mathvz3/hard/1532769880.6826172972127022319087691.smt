;  time  = {'mathsat': 6.645474433898926, 'z3': 600}
;  terms = 93
;  score = 593.3545255661011
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
(assert (fp.isPositive (fp.sub RNE (fp.max (fp.div RNE (fp.sub RNE (fp.div RNE x8 (fp.sub RNE x0 x4)) (fp.add RNE (fp.min x4 x0) (fp.div RNE x2 x2))) (fp.abs (fp.sub RNE (fp.neg x6) (fp.mul RNE x2 x5)))) (fp.mul RNE (fp.mul RNE (fp.sub RNE (fp.sub RNE x1 x2) (fp.div RNE x7 x7)) (fp.sqrt RNE (fp.neg x0))) (fp.sub RNE (fp.sub RNE (fp.sub RNE x1 x8) (fp.max x9 x9)) (fp.div RNE (fp.min x5 x5) (fp.sqrt RNE x1))))) (fp.div RNE (fp.div RNE (fp.div RNE (fp.max (fp.div RNE x0 x5) (fp.div RNE x5 x3)) (fp.sub RNE (fp.div RNE x5 x7) (fp.mul RNE x8 x3))) (fp.sub RNE (fp.div RNE (fp.neg x7) (fp.mul RNE x0 x7)) (fp.mul RNE (fp.div RNE x7 x8) (fp.abs x2)))) (fp.sub RNE (fp.roundToIntegral RNE (fp.sqrt RNE (fp.mul RNE x5 x9))) (fp.abs (fp.max (fp.mul RNE x5 x6) (fp.sqrt RNE x6))))))))(check-sat)