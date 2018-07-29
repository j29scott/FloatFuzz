;  time  = {'z3': 600, 'mathsat': 15.005927562713623}
;  terms = 72
;  score = 584.9940724372864
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
(assert (fp.isZero (fp.div RNE (fp.min (fp.div RNE (fp.div RNE (fp.min x8 x4) (fp.div RNE x1 x8)) (fp.div RNE (fp.roundToIntegral RNE x7) (fp.sub RNE x8 x9))) (fp.div RNE (fp.div RNE (fp.div RNE (fp.mul RNE x3 x0) (fp.neg x8)) (fp.div RNE (fp.add RNE x4 x7) (fp.div RNE x4 x9))) (fp.div RNE (fp.min (fp.sqrt RNE x9) (fp.div RNE x6 x8)) (fp.roundToIntegral RNE (fp.add RNE x7 x7))))) (fp.sub RNE (fp.add RNE (fp.min (fp.max (fp.min x4 x4) (fp.sqrt RNE x5)) (fp.abs (fp.mul RNE x2 x7))) (fp.sqrt RNE (fp.mul RNE (fp.div RNE x3 x9) (fp.div RNE x1 x7)))) (fp.sqrt RNE (fp.abs (fp.div RNE (fp.neg x1) (fp.min x1 x0))))))))(check-sat)