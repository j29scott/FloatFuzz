;  time  = {'mathsat': 50.51738882064819, 'z3': 600}
;  terms = 104
;  score = 549.4826111793518
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
(assert (fp.lt (fp.mul RNE (fp.mul RNE (fp.neg (fp.div RNE (fp.sub RNE x4 x7) (fp.mul RNE (fp.div RNE x5 x3) (fp.mul RNE x0 x0)))) (fp.neg (fp.min (fp.sqrt RNE x5) (fp.div RNE x4 (fp.add RNE x4 x2))))) (fp.mul RNE (fp.mul RNE (fp.mul RNE (fp.abs x0) (fp.neg x1)) (fp.min (fp.div RNE x6 x6) (fp.div RNE x8 (fp.roundToIntegral RNE x7)))) (fp.min (fp.div RNE (fp.div RNE x3 x4) (fp.sub RNE (fp.sqrt RNE x3) (fp.sqrt RNE x6))) (fp.mul RNE (fp.min x8 x3) (fp.add RNE x7 x3))))) (fp.div RNE (fp.mul RNE (fp.div RNE (fp.neg (fp.div RNE x3 x4)) (fp.div RNE (fp.neg x6) (fp.min x7 x7))) (fp.neg (fp.min (fp.abs (fp.min x5 x7)) (fp.min (fp.neg x2) (fp.div RNE x2 x7))))) (fp.abs (fp.div RNE (fp.mul RNE (fp.mul RNE x3 x2) (fp.neg x1)) (fp.max (fp.div RNE (fp.div RNE x1 x0) (fp.sub RNE x1 x0)) (fp.sub RNE (fp.add RNE x7 x6) (fp.sub RNE x8 x6))))))))(check-sat)