;  time  = {'z3': 600, 'mathsat': 25.357359886169434}
;  terms = 114
;  score = 574.6426401138306
;  stdout= {'z3': 'timeout\n', 'mathsat': 'sat'}
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
(assert (fp.leq (fp.mul RNE (fp.mul RNE (fp.sqrt RNE (fp.sqrt RNE (fp.neg x2))) (fp.mul RNE (fp.sqrt RNE (fp.div RNE (fp.add RNE x9 x7) (fp.max x1 x7))) (fp.max (fp.sub RNE (fp.min x2 x8) (fp.div RNE x8 x9)) (fp.mul RNE (fp.div RNE x2 x6) (fp.div RNE x7 x1))))) (fp.neg (fp.mul RNE (fp.min (fp.add RNE (fp.min x5 x2) (fp.add RNE x4 x9)) (fp.roundToIntegral RNE (fp.max x9 x9))) (fp.mul RNE (fp.add RNE (fp.abs x1) (fp.min x5 x7)) (fp.sub RNE (fp.div RNE x7 x0) (fp.sub RNE x6 x8)))))) (fp.div RNE (fp.sqrt RNE (fp.sqrt RNE (fp.div RNE (fp.sqrt RNE x4) (fp.mul RNE (fp.div RNE x4 x8) (fp.mul RNE x6 x5))))) (fp.div RNE (fp.div RNE (fp.mul RNE (fp.max (fp.max x9 x6) (fp.div RNE x5 x7)) (fp.neg (fp.sub RNE x0 x7))) (fp.div RNE (fp.mul RNE (fp.sqrt RNE x0) (fp.sqrt RNE x1)) (fp.mul RNE (fp.mul RNE x4 x8) (fp.mul RNE x7 x1)))) (fp.abs (fp.div RNE (fp.max (fp.max x6 x8) (fp.sqrt RNE x3)) (fp.add RNE (fp.div RNE x6 x6) (fp.max x6 x9))))))))(check-sat)