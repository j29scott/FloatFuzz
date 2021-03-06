;  time  = {'z3': 600, 'mathsat': 47.489362716674805}
;  terms = 166
;  score = 552.5106372833252
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
(assert (fp.gt (fp.div RNE (fp.min (fp.sqrt RNE (fp.min (fp.mul RNE x8 x1) (fp.add RNE (fp.abs x2) (fp.max x4 x7)))) (fp.min (fp.mul RNE (fp.add RNE x9 x1) (fp.min x3 x6)) (fp.mul RNE (fp.mul RNE x4 (fp.div RNE x1 x6)) (fp.add RNE x7 x2)))) (fp.add RNE (fp.add RNE (fp.roundToIntegral RNE (fp.abs x1)) (fp.min (fp.add RNE (fp.add RNE x3 x3) (fp.add RNE x6 x4)) (fp.div RNE (fp.min x7 x8) (fp.sqrt RNE x0)))) (fp.add RNE (fp.div RNE (fp.div RNE x8 (fp.max x2 x6)) (fp.mul RNE x5 x3)) (fp.min (fp.min x3 x2) (fp.sqrt RNE (fp.abs x6)))))) (fp.min (fp.mul RNE (fp.min (fp.sub RNE (fp.roundToIntegral RNE x4) (fp.abs x1)) (fp.min (fp.min x7 x6) (fp.add RNE x7 (fp.roundToIntegral RNE x7)))) (fp.min (fp.mul RNE (fp.min (fp.div RNE x3 x7) (fp.min x4 x3)) (fp.max (fp.mul RNE x5 x7) (fp.abs x8))) (fp.add RNE (fp.add RNE (fp.roundToIntegral RNE x3) (fp.abs x7)) (fp.add RNE (fp.sqrt RNE x6) (fp.neg x5))))) (fp.add RNE (fp.max (fp.sub RNE (fp.neg (fp.add RNE x2 x0)) (fp.min (fp.sqrt RNE x9) (fp.add RNE x4 x1))) (fp.div RNE (fp.add RNE (fp.add RNE x1 x2) (fp.mul RNE x7 x6)) (fp.min (fp.sub RNE x7 x1) (fp.div RNE x9 x1)))) (fp.mul RNE (fp.min (fp.sub RNE (fp.mul RNE x5 x2) (fp.add RNE x0 x2)) (fp.min (fp.div RNE x8 x5) (fp.neg x7))) (fp.sub RNE (fp.max (fp.mul RNE x5 x6) (fp.sqrt RNE x1)) (fp.div RNE (fp.add RNE x6 x6) (fp.max x9 x5))))))))(check-sat)