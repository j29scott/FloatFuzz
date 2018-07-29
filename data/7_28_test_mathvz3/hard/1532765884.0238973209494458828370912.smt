;  time  = {'z3': 600, 'mathsat': 7.158692359924316}
;  terms = 91
;  score = 592.8413076400757
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
(assert (fp.geq (fp.roundToIntegral RNE (fp.mul RNE (fp.mul RNE (fp.mul RNE (fp.max x9 x1) (fp.div RNE x1 x8)) (fp.div RNE (fp.mul RNE x5 (fp.div RNE x6 x0)) (fp.div RNE x4 (fp.div RNE x4 x2)))) (fp.add RNE (fp.neg (fp.div RNE (fp.mul RNE x3 x5) (fp.abs x7))) (fp.max (fp.div RNE (fp.roundToIntegral RNE x5) (fp.mul RNE x5 x3)) (fp.div RNE (fp.div RNE x1 x8) (fp.mul RNE x2 x9)))))) (fp.sub RNE (fp.abs (fp.add RNE (fp.sqrt RNE (fp.sqrt RNE x8)) (fp.sqrt RNE (fp.div RNE x2 x4)))) (fp.min (fp.mul RNE (fp.div RNE (fp.add RNE x4 x1) (fp.min (fp.mul RNE x6 x2) (fp.mul RNE x0 x9))) (fp.mul RNE (fp.div RNE (fp.sub RNE x9 x4) (fp.sub RNE x6 x2)) (fp.mul RNE (fp.mul RNE x9 x3) (fp.sub RNE x8 x8)))) (fp.mul RNE (fp.sqrt RNE (fp.sub RNE x1 x2)) (fp.abs (fp.div RNE x4 x5)))))))(check-sat)