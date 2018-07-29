;  time  = {'mathsat': 24.35297656059265, 'z3': 551.118}
;  terms = 163
;  score = 526.7650234394074
;  stdout= {'mathsat': 'sat', 'z3': 'sat\n'}
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
(assert (fp.leq (fp.add RNE (fp.mul RNE (fp.min (fp.min (fp.mul RNE x7 (fp.mul RNE x1 x7)) (fp.div RNE x1 x4)) (fp.max (fp.min x3 x5) (fp.neg x2))) (fp.mul RNE (fp.div RNE (fp.abs x6) (fp.sqrt RNE x5)) (fp.neg (fp.div RNE (fp.max x4 x6) (fp.add RNE x0 x1))))) (fp.add RNE (fp.sub RNE (fp.roundToIntegral RNE (fp.roundToIntegral RNE (fp.sqrt RNE x4))) (fp.add RNE (fp.neg (fp.mul RNE x9 x1)) (fp.add RNE (fp.max x6 x7) (fp.mul RNE x2 x9)))) (fp.div RNE (fp.mul RNE (fp.add RNE (fp.add RNE x1 x7) (fp.max x5 x6)) (fp.mul RNE (fp.mul RNE x4 x9) (fp.mul RNE x3 x4))) (fp.mul RNE (fp.roundToIntegral RNE (fp.mul RNE x5 x3)) (fp.add RNE (fp.sub RNE x9 x1) (fp.mul RNE x2 x0)))))) (fp.sub RNE (fp.add RNE (fp.add RNE (fp.add RNE (fp.mul RNE x4 x8) (fp.mul RNE x8 (fp.mul RNE x9 x7))) (fp.sub RNE (fp.add RNE (fp.min x4 x6) (fp.mul RNE x2 x5)) (fp.min (fp.abs x1) (fp.min x4 x3)))) (fp.max (fp.div RNE (fp.max x1 (fp.min x7 x6)) (fp.mul RNE x8 x9)) (fp.add RNE (fp.mul RNE x9 (fp.max x9 x5)) (fp.mul RNE x1 x7)))) (fp.add RNE (fp.add RNE (fp.add RNE (fp.div RNE x8 x5) (fp.roundToIntegral RNE x4)) (fp.mul RNE (fp.add RNE x2 x3) (fp.mul RNE (fp.mul RNE x9 x6) (fp.sub RNE x5 x9)))) (fp.mul RNE (fp.neg (fp.add RNE x9 x6)) (fp.add RNE (fp.max (fp.mul RNE x6 x4) (fp.div RNE x1 x3)) (fp.mul RNE (fp.div RNE x1 x5) (fp.min x2 x9))))))))(check-sat)