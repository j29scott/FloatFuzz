;  time  = {'z3': 600}
;  terms = 87
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
(assert (fp.eq (fp.div RNE (fp.add RNE (fp.min (fp.add RNE (fp.max x5 x0) (fp.neg x1)) (fp.add RNE (fp.roundToIntegral RNE x1) (fp.div RNE x6 x6))) (fp.sqrt RNE (fp.div RNE (fp.sub RNE x9 x1) (fp.abs x8)))) (fp.add RNE (fp.sub RNE (fp.sub RNE (fp.max x3 x3) (fp.add RNE x3 x7)) (fp.sqrt RNE (fp.sqrt RNE x6))) (fp.div RNE (fp.add RNE (fp.sub RNE x4 x3) (fp.min x9 x4)) (fp.div RNE (fp.mul RNE x8 x2) (fp.sqrt RNE x1))))) (fp.div RNE (fp.min (fp.add RNE (fp.sqrt RNE (fp.sqrt RNE x7)) (fp.abs (fp.sub RNE x7 x8))) (fp.add RNE (fp.max (fp.roundToIntegral RNE x8) (fp.max x5 x6)) (fp.mul RNE (fp.div RNE x3 x5) (fp.sub RNE x4 x7)))) (fp.max (fp.sqrt RNE (fp.neg (fp.min x2 x9))) (fp.max (fp.roundToIntegral RNE (fp.neg x4)) (fp.roundToIntegral RNE (fp.div RNE x4 x9)))))))(check-sat)