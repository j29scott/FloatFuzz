;  time  = {'z3': 578.277, 'mathsat': 17.749436616897583}
;  terms = 130
;  score = 560.5275633831025
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
(assert (fp.leq (fp.div RNE (fp.div RNE (fp.div RNE (fp.add RNE (fp.add RNE x6 (fp.mul RNE x7 x7)) (fp.add RNE x9 x8)) (fp.min (fp.sqrt RNE x8) (fp.add RNE x2 x9))) (fp.max (fp.add RNE (fp.add RNE x6 (fp.abs x5)) (fp.add RNE x0 (fp.abs x7))) (fp.add RNE (fp.add RNE x1 x0) (fp.add RNE x4 x3)))) (fp.add RNE (fp.add RNE (fp.mul RNE (fp.sqrt RNE x7) (fp.div RNE x1 x8)) (fp.add RNE (fp.neg (fp.add RNE x0 x9)) (fp.max (fp.max x0 x2) (fp.mul RNE x7 x3)))) (fp.div RNE (fp.roundToIntegral RNE (fp.roundToIntegral RNE (fp.abs x9))) (fp.min (fp.mul RNE (fp.div RNE x0 x6) (fp.div RNE x5 x5)) (fp.sub RNE (fp.roundToIntegral RNE x2) (fp.add RNE x1 x6)))))) (fp.min (fp.sub RNE (fp.div RNE (fp.div RNE (fp.min x1 x5) (fp.neg (fp.roundToIntegral RNE x4))) (fp.add RNE (fp.add RNE x9 x5) (fp.min (fp.sqrt RNE x9) (fp.add RNE x6 x9)))) (fp.sqrt RNE (fp.min (fp.max x8 x3) (fp.add RNE x0 (fp.div RNE x0 x6))))) (fp.sub RNE (fp.add RNE (fp.div RNE (fp.add RNE x3 x5) (fp.div RNE x8 x6)) (fp.div RNE (fp.add RNE x2 (fp.mul RNE x3 x7)) (fp.add RNE x0 x3))) (fp.roundToIntegral RNE (fp.min (fp.add RNE x1 x8) (fp.neg x7)))))))(check-sat)