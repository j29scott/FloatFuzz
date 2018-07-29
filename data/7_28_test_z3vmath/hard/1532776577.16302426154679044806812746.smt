;  time  = {'z3': 600}
;  terms = 118
;  score = 600
;  stdout= {'z3': 'timeout\n'}
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
(assert (fp.lt (fp.min (fp.mul RNE (fp.sqrt RNE (fp.sub RNE (fp.min x5 (fp.max x5 x6)) (fp.sqrt RNE x7))) (fp.min (fp.div RNE (fp.min (fp.max x6 x9) (fp.sqrt RNE x6)) (fp.sqrt RNE (fp.div RNE x0 x6))) (fp.div RNE (fp.sqrt RNE (fp.mul RNE x6 x1)) (fp.sqrt RNE (fp.mul RNE x2 x2))))) (fp.abs (fp.mul RNE (fp.sub RNE (fp.mul RNE x8 x4) (fp.neg x2)) (fp.div RNE (fp.max x6 x8) (fp.sqrt RNE x4))))) (fp.div RNE (fp.add RNE (fp.roundToIntegral RNE (fp.min (fp.neg x4) (fp.sub RNE x1 x9))) (fp.div RNE (fp.div RNE (fp.mul RNE x4 x1) (fp.neg x6)) (fp.sqrt RNE (fp.sub RNE x1 x5)))) (fp.div RNE (fp.min (fp.neg (fp.max (fp.min x0 x3) (fp.sub RNE x9 x4))) (fp.mul RNE (fp.add RNE (fp.div RNE x7 x2) (fp.roundToIntegral RNE x6)) (fp.mul RNE (fp.max x5 x6) (fp.sqrt RNE x3)))) (fp.max (fp.max (fp.mul RNE (fp.roundToIntegral RNE x6) (fp.max x9 x7)) (fp.max (fp.roundToIntegral RNE x8) (fp.sub RNE x2 x6))) (fp.mul RNE (fp.mul RNE (fp.max x3 x4) (fp.min x4 x8)) (fp.add RNE (fp.roundToIntegral RNE x8) (fp.max x4 x6))))))))(check-sat)