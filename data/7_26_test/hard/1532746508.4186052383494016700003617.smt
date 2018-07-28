;  time  = {'mathsat': 16.532005310058594, 'z3': 600}
;  terms = 87
;  score = 583.4679946899414
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
(assert (fp.gt (fp.div RNE (fp.sub RNE (fp.sqrt RNE (fp.sqrt RNE (fp.abs x4))) (fp.abs (fp.sub RNE (fp.abs x2) (fp.roundToIntegral RNE x9)))) (fp.max (fp.roundToIntegral RNE (fp.roundToIntegral RNE (fp.mul RNE x3 x6))) (fp.roundToIntegral RNE (fp.sqrt RNE (fp.div RNE x3 x6))))) (fp.div RNE (fp.div RNE (fp.div RNE (fp.div RNE (fp.min x9 x9) (fp.add RNE (fp.sub RNE x2 x9) (fp.neg x9))) (fp.mul RNE (fp.max x7 x1) (fp.div RNE x8 x6))) (fp.add RNE (fp.sqrt RNE (fp.mul RNE (fp.abs x2) (fp.div RNE x8 x9))) (fp.div RNE (fp.sub RNE (fp.roundToIntegral RNE x0) (fp.div RNE x0 x8)) (fp.sub RNE (fp.neg x0) (fp.div RNE x5 x1))))) (fp.abs (fp.add RNE (fp.abs (fp.sqrt RNE (fp.add RNE x9 x2))) (fp.add RNE (fp.div RNE (fp.div RNE x5 x2) (fp.add RNE x9 x8)) (fp.min (fp.div RNE x7 x8) (fp.div RNE x3 x3))))))))(check-sat)