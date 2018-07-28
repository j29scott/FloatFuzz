;  time  = {'z3': 600, 'mathsat': 40.73312544822693}
;  terms = 116
;  score = 559.2668745517731
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
(assert (fp.leq (fp.max (fp.sqrt RNE (fp.div RNE (fp.sqrt RNE (fp.div RNE x1 (fp.min x6 x2))) (fp.div RNE (fp.abs x7) (fp.sqrt RNE x3)))) (fp.div RNE (fp.sub RNE (fp.sqrt RNE (fp.div RNE x9 x6)) (fp.div RNE (fp.div RNE x2 (fp.sub RNE x5 x1)) (fp.sub RNE (fp.add RNE x7 x1) (fp.min x7 x6)))) (fp.div RNE (fp.div RNE (fp.sub RNE x0 x0) (fp.mul RNE x2 x4)) (fp.div RNE (fp.add RNE (fp.add RNE x4 x8) (fp.min x2 x7)) (fp.mul RNE (fp.add RNE x3 x6) (fp.div RNE x2 x9)))))) (fp.div RNE (fp.abs (fp.mul RNE (fp.min (fp.div RNE x7 x3) (fp.min x7 x7)) (fp.min (fp.abs x6) (fp.div RNE x8 x6)))) (fp.div RNE (fp.div RNE (fp.roundToIntegral RNE (fp.div RNE (fp.max x2 x4) (fp.div RNE x9 x5))) (fp.sub RNE (fp.add RNE (fp.div RNE x7 x1) (fp.roundToIntegral RNE x8)) (fp.add RNE (fp.div RNE x2 x2) (fp.abs x3)))) (fp.min (fp.min (fp.max (fp.div RNE x2 x3) (fp.mul RNE x9 x1)) (fp.sub RNE (fp.max x0 x3) (fp.sqrt RNE x9))) (fp.neg (fp.neg (fp.max x3 x6))))))))(check-sat)