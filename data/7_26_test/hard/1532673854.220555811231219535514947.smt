;  time  = {'z3': 585.459, 'mathsat': 6.474968194961548}
;  terms = 115
;  score = 578.9840318050384
;  stdout= {'z3': 'sat\n', 'mathsat': 'sat'}
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
(assert (fp.leq (fp.sub RNE (fp.sub RNE (fp.max (fp.sqrt RNE (fp.mul RNE x0 x7)) (fp.min (fp.mul RNE x4 x6) (fp.roundToIntegral RNE x1))) (fp.div RNE (fp.max (fp.neg x4) (fp.add RNE x1 x9)) (fp.sub RNE (fp.mul RNE x6 (fp.div RNE x6 x5)) (fp.roundToIntegral RNE x8)))) (fp.roundToIntegral RNE (fp.div RNE (fp.max (fp.neg x2) (fp.div RNE x0 x3)) (fp.mul RNE (fp.sub RNE (fp.mul RNE x2 x7) (fp.mul RNE x6 x0)) (fp.sqrt RNE (fp.roundToIntegral RNE x4)))))) (fp.sub RNE (fp.mul RNE (fp.max (fp.sqrt RNE (fp.sub RNE x7 x9)) (fp.mul RNE (fp.mul RNE x7 x4) (fp.sub RNE x4 x8))) (fp.mul RNE (fp.sub RNE (fp.div RNE (fp.add RNE x5 x1) (fp.div RNE x4 x0)) (fp.sqrt RNE (fp.sqrt RNE x4))) (fp.mul RNE (fp.div RNE (fp.mul RNE x2 x5) (fp.abs x5)) (fp.sqrt RNE (fp.add RNE x1 x8))))) (fp.div RNE (fp.max (fp.abs (fp.add RNE (fp.add RNE x6 x8) (fp.min x7 x6))) (fp.div RNE (fp.add RNE (fp.div RNE x3 x4) (fp.abs x0)) (fp.sqrt RNE (fp.mul RNE x1 x3)))) (fp.sqrt RNE (fp.mul RNE (fp.sqrt RNE (fp.roundToIntegral RNE x8)) (fp.abs (fp.div RNE x3 x4))))))))(check-sat)