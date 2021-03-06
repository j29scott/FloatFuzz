;  time  = {'z3': 577.49, 'mathsat': 11.322561025619507}
;  terms = 94
;  score = 566.1674389743805
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
(assert (fp.lt (fp.sub RNE (fp.roundToIntegral RNE (fp.div RNE (fp.sub RNE (fp.mul RNE x6 x6) (fp.abs (fp.div RNE x8 x7))) (fp.sub RNE (fp.sub RNE x3 x5) (fp.min x2 x1)))) (fp.add RNE (fp.mul RNE (fp.max (fp.div RNE (fp.div RNE x5 x4) (fp.div RNE x6 x2)) (fp.mul RNE (fp.sqrt RNE x5) (fp.div RNE x5 x1))) (fp.sqrt RNE (fp.sub RNE (fp.div RNE x4 x8) (fp.mul RNE x5 x4)))) (fp.add RNE (fp.div RNE (fp.mul RNE (fp.neg x6) (fp.abs x0)) (fp.sub RNE (fp.neg x1) (fp.abs x4))) (fp.neg (fp.max (fp.div RNE x1 x9) (fp.abs x2)))))) (fp.sqrt RNE (fp.div RNE (fp.sub RNE (fp.sub RNE (fp.sub RNE x1 x1) (fp.sub RNE x6 (fp.sub RNE x6 x8))) (fp.roundToIntegral RNE (fp.neg (fp.div RNE x8 x7)))) (fp.sub RNE (fp.sub RNE (fp.roundToIntegral RNE x1) (fp.neg (fp.add RNE x6 x7))) (fp.add RNE (fp.div RNE x2 x5) (fp.add RNE x4 x3)))))))(check-sat)