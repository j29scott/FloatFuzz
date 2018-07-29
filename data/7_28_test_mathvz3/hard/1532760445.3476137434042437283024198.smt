;  time  = {'z3': 600, 'mathsat': 22.756163835525513}
;  terms = 94
;  score = 577.2438361644745
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
(assert (fp.geq (fp.div RNE (fp.div RNE (fp.div RNE (fp.div RNE (fp.neg x6) (fp.sqrt RNE x2)) (fp.neg (fp.max x8 x5))) (fp.mul RNE (fp.div RNE (fp.div RNE x6 x8) (fp.div RNE x8 (fp.add RNE x1 x9))) (fp.div RNE (fp.div RNE x4 x0) (fp.abs x7)))) (fp.mul RNE (fp.abs (fp.mul RNE (fp.abs x7) (fp.div RNE x1 x9))) (fp.mul RNE (fp.abs (fp.abs x1)) (fp.abs (fp.roundToIntegral RNE x3))))) (fp.div RNE (fp.div RNE (fp.sub RNE (fp.abs (fp.abs x8)) (fp.div RNE (fp.mul RNE x1 x4) (fp.abs (fp.sqrt RNE x9)))) (fp.div RNE (fp.roundToIntegral RNE (fp.add RNE (fp.sqrt RNE x7) (fp.neg x9))) (fp.min (fp.max (fp.add RNE x1 x0) (fp.min x0 x4)) (fp.abs (fp.neg x0))))) (fp.neg (fp.min (fp.add RNE (fp.div RNE (fp.abs x0) (fp.div RNE x0 x3)) (fp.sub RNE (fp.abs x7) (fp.div RNE x7 x2))) (fp.abs (fp.roundToIntegral RNE (fp.neg x6))))))))(check-sat)