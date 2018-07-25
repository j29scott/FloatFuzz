;  time  = {'z3': 600}
;  terms = 94
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
(assert (fp.eq (fp.min (fp.div RNE (fp.neg (fp.add RNE (fp.sub RNE x6 x7) (fp.mul RNE x1 x2))) (fp.div RNE (fp.max (fp.mul RNE x7 x0) (fp.sub RNE x0 x8)) (fp.add RNE (fp.min x6 x7) (fp.sqrt RNE x1)))) (fp.add RNE (fp.neg (fp.add RNE (fp.max x6 x5) (fp.min x6 x8))) (fp.add RNE (fp.div RNE (fp.roundToIntegral RNE x5) (fp.max x1 x7)) (fp.add RNE (fp.div RNE x9 x3) (fp.div RNE x8 x5))))) (fp.div RNE (fp.div RNE (fp.div RNE (fp.min (fp.max x0 x5) (fp.div RNE x9 x9)) (fp.add RNE (fp.add RNE x3 x5) (fp.sub RNE x4 x8))) (fp.div RNE (fp.min (fp.min x6 x6) (fp.max x6 x0)) (fp.sub RNE (fp.mul RNE x6 x3) (fp.roundToIntegral RNE x9)))) (fp.abs (fp.sub RNE (fp.mul RNE (fp.neg x4) (fp.div RNE x0 x4)) (fp.sub RNE (fp.add RNE x7 x4) (fp.div RNE x6 x1)))))))(check-sat)