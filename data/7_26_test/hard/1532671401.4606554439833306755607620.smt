;  time  = {'z3': 555.466, 'mathsat': 48.01875019073486}
;  terms = 99
;  score = 507.44724980926514
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
(assert (fp.gt (fp.add RNE (fp.sqrt RNE (fp.mul RNE (fp.mul RNE (fp.add RNE x2 x8) (fp.mul RNE x6 x3)) (fp.roundToIntegral RNE (fp.mul RNE x6 (fp.add RNE x0 x2))))) (fp.max (fp.mul RNE (fp.div RNE (fp.mul RNE x5 (fp.sub RNE x9 x1)) (fp.sqrt RNE x3)) (fp.div RNE (fp.neg x5) (fp.div RNE x3 x0))) (fp.mul RNE (fp.mul RNE (fp.mul RNE x3 x1) (fp.min x5 x7)) (fp.max (fp.mul RNE x3 x2) (fp.div RNE x6 x1))))) (fp.mul RNE (fp.mul RNE (fp.mul RNE (fp.mul RNE (fp.neg x0) (fp.sqrt RNE (fp.abs x8))) (fp.min (fp.sub RNE x1 (fp.sub RNE x6 x4)) (fp.abs x7))) (fp.roundToIntegral RNE (fp.roundToIntegral RNE (fp.sqrt RNE x0)))) (fp.sub RNE (fp.mul RNE (fp.sub RNE (fp.mul RNE x9 x8) (fp.mul RNE x9 x3)) (fp.abs (fp.mul RNE (fp.sub RNE x3 x7) (fp.div RNE x4 x4)))) (fp.div RNE (fp.mul RNE (fp.max x5 x6) (fp.div RNE x1 x9)) (fp.neg (fp.mul RNE x2 (fp.abs x1))))))))(check-sat)