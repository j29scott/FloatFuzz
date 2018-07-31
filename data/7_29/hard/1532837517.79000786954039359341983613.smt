;  time  = {'z3': 554.566}
;  terms = 95
;  score = 554.566
;  stdout= {'z3': 'sat\n'}
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
(assert (fp.eq (fp.div RNE (fp.add RNE (fp.max (fp.div RNE (fp.mul RNE x9 x5) (fp.roundToIntegral RNE x4)) (fp.add RNE (fp.sqrt RNE x5) (fp.div RNE x4 x8))) (fp.max (fp.max (fp.sub RNE x6 x5) (fp.abs x1)) (fp.sub RNE (fp.mul RNE x3 x5) (fp.neg x7)))) (fp.max (fp.neg (fp.max (fp.abs x0) (fp.div RNE x2 x7))) (fp.min (fp.min (fp.max x9 x7) (fp.sub RNE x2 x9)) (fp.max (fp.sqrt RNE x0) (fp.sub RNE (fp.min x1 x3) (fp.mul RNE x2 x3)))))) (fp.max (fp.roundToIntegral RNE (fp.sub RNE (fp.max (fp.add RNE x5 x1) (fp.max x0 x3)) (fp.add RNE (fp.neg x6) (fp.max x6 (fp.sub RNE x1 x4))))) (fp.sub RNE (fp.roundToIntegral RNE (fp.min (fp.add RNE x6 x8) (fp.div RNE x7 x0))) (fp.mul RNE (fp.add RNE (fp.neg x3) (fp.abs x5)) (fp.max (fp.div RNE x2 x5) (fp.min x0 x9)))))))(check-sat)