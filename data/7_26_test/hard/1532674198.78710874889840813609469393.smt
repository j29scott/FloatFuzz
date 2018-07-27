;  time  = {'z3': 600, 'mathsat': 38.22040843963623}
;  terms = 102
;  score = 561.7795915603638
;  stdout= {'z3': 'timeout\n', 'mathsat': 'sat'}
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
(assert (fp.lt (fp.mul RNE (fp.div RNE (fp.div RNE (fp.abs (fp.abs x1)) (fp.min (fp.div RNE (fp.div RNE x8 x3) (fp.abs x9)) (fp.div RNE (fp.mul RNE x0 x9) (fp.div RNE x6 x9)))) (fp.div RNE (fp.abs (fp.div RNE x8 x3)) (fp.div RNE (fp.abs (fp.min x9 x9)) (fp.max (fp.sqrt RNE x8) (fp.sub RNE x9 x5))))) (fp.div RNE (fp.div RNE (fp.div RNE (fp.mul RNE x0 x4) (fp.sub RNE x4 x6)) (fp.div RNE (fp.div RNE x3 (fp.roundToIntegral RNE x8)) (fp.max (fp.div RNE x5 x8) (fp.neg x1)))) (fp.div RNE (fp.neg (fp.min x7 x6)) (fp.div RNE (fp.sqrt RNE x1) (fp.max (fp.roundToIntegral RNE x3) (fp.abs x1)))))) (fp.max (fp.sub RNE (fp.abs (fp.div RNE (fp.div RNE x4 x8) (fp.roundToIntegral RNE x3))) (fp.sqrt RNE (fp.sqrt RNE (fp.div RNE x9 x4)))) (fp.sqrt RNE (fp.max (fp.div RNE (fp.div RNE x1 x4) (fp.sqrt RNE (fp.div RNE x1 x8))) (fp.max (fp.roundToIntegral RNE x6) (fp.div RNE x1 (fp.sub RNE x6 x4))))))))(check-sat)