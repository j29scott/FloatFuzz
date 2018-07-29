;  time  = {'mathsat': 35.97178936004639, 'z3': 600}
;  terms = 80
;  score = 564.0282106399536
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
(assert (fp.isPositive (fp.mul RNE (fp.add RNE (fp.mul RNE (fp.max (fp.mul RNE x8 x4) (fp.div RNE x2 x2)) (fp.sub RNE (fp.mul RNE x8 x0) (fp.mul RNE x1 (fp.mul RNE x3 x0)))) (fp.mul RNE (fp.add RNE (fp.mul RNE x5 (fp.mul RNE x7 x6)) (fp.min x7 x4)) (fp.mul RNE (fp.div RNE x1 x6) (fp.div RNE (fp.div RNE x0 x8) (fp.mul RNE x0 x1))))) (fp.mul RNE (fp.mul RNE (fp.sub RNE (fp.div RNE x9 x7) (fp.mul RNE x7 x0)) (fp.max (fp.div RNE x1 x0) (fp.div RNE x9 x2))) (fp.mul RNE (fp.div RNE (fp.mul RNE (fp.mul RNE x7 x8) (fp.div RNE x0 x5)) (fp.sub RNE (fp.div RNE x7 x8) (fp.div RNE x3 x7))) (fp.sqrt RNE (fp.div RNE (fp.add RNE x8 x4) (fp.abs x1))))))))(check-sat)