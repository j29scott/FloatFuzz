;  time  = {'mathsat': 8.65081262588501, 'z3': 600}
;  terms = 64
;  score = 591.349187374115
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
(assert (fp.geq (fp.min (fp.div RNE (fp.div RNE (fp.sqrt RNE (fp.sub RNE x9 x8)) (fp.mul RNE (fp.roundToIntegral RNE x2) (fp.sqrt RNE x4))) (fp.abs (fp.sqrt RNE (fp.add RNE x4 x3)))) (fp.neg (fp.abs (fp.sqrt RNE (fp.min (fp.min x2 x3) (fp.div RNE x4 x1)))))) (fp.div RNE (fp.roundToIntegral RNE (fp.div RNE (fp.div RNE (fp.div RNE x7 x3) (fp.mul RNE (fp.div RNE x4 x6) (fp.mul RNE x8 x2))) (fp.div RNE (fp.min (fp.abs x7) (fp.roundToIntegral RNE x3)) (fp.min (fp.roundToIntegral RNE x3) (fp.sqrt RNE x5))))) (fp.sqrt RNE (fp.min (fp.sqrt RNE (fp.neg x4)) (fp.add RNE (fp.abs x0) (fp.div RNE x0 x1)))))))(check-sat)