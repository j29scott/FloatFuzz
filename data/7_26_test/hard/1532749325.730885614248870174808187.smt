;  time  = {'mathsat': 25.96218991279602, 'z3': 600}
;  terms = 63
;  score = 574.037810087204
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
(assert (fp.isNormal (fp.div RNE (fp.add RNE (fp.div RNE (fp.div RNE (fp.abs x7) (fp.min x6 x1)) (fp.add RNE (fp.div RNE x8 (fp.min x0 x2)) (fp.div RNE x5 x7))) (fp.div RNE (fp.mul RNE (fp.sub RNE x9 x7) (fp.neg x8)) (fp.min (fp.div RNE x2 x0) (fp.min x0 x0)))) (fp.sqrt RNE (fp.mul RNE (fp.sub RNE (fp.div RNE (fp.sub RNE x8 x5) (fp.roundToIntegral RNE x1)) (fp.div RNE (fp.mul RNE x8 x1) (fp.add RNE x0 x1))) (fp.mul RNE (fp.min (fp.sub RNE x8 x0) (fp.sub RNE x4 x5)) (fp.div RNE (fp.add RNE x2 x1) (fp.neg x4))))))))(check-sat)