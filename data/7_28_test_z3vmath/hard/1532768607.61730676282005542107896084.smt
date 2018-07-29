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
(assert (fp.lt (fp.abs (fp.min (fp.add RNE (fp.add RNE (fp.mul RNE x8 x4) (fp.sub RNE x5 x8)) (fp.div RNE (fp.sub RNE x4 (fp.div RNE x9 x4)) (fp.sub RNE x7 (fp.div RNE x3 x5)))) (fp.add RNE (fp.mul RNE (fp.sub RNE x7 (fp.sub RNE x4 x8)) (fp.roundToIntegral RNE x6)) (fp.sub RNE (fp.roundToIntegral RNE x2) (fp.sqrt RNE x5))))) (fp.div RNE (fp.max (fp.sub RNE (fp.div RNE (fp.sub RNE x5 x2) (fp.mul RNE (fp.div RNE x0 x1) (fp.roundToIntegral RNE x7))) (fp.add RNE (fp.neg x5) (fp.sub RNE x5 x3))) (fp.neg (fp.add RNE (fp.max x0 x2) (fp.sub RNE x1 x1)))) (fp.div RNE (fp.abs (fp.add RNE (fp.div RNE x6 x4) (fp.sub RNE x5 x2))) (fp.add RNE (fp.min (fp.div RNE x7 x1) (fp.min x4 x7)) (fp.max (fp.div RNE x5 x6) (fp.div RNE x1 x7)))))))(check-sat)