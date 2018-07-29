;  time  = {'z3': 600, 'mathsat': 241.09927535057068}
;  terms = 94
;  score = 358.9007246494293
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
(assert (fp.isSubnormal (fp.sub RNE (fp.sub RNE (fp.sub RNE (fp.sub RNE (fp.max x4 (fp.add RNE x7 x1)) (fp.add RNE (fp.add RNE x5 x8) (fp.max x3 x5))) (fp.mul RNE (fp.add RNE (fp.sub RNE x3 x7) (fp.add RNE x7 x9)) (fp.max (fp.roundToIntegral RNE x3) (fp.div RNE x5 x2)))) (fp.mul RNE (fp.div RNE (fp.div RNE (fp.abs x2) (fp.roundToIntegral RNE x5)) (fp.add RNE (fp.sub RNE x5 x7) (fp.add RNE x6 x6))) (fp.add RNE (fp.min (fp.add RNE x2 x4) (fp.roundToIntegral RNE x8)) (fp.add RNE (fp.sub RNE x5 x9) (fp.sub RNE x9 x1))))) (fp.mul RNE (fp.add RNE (fp.mul RNE (fp.max x1 x6) (fp.mul RNE x9 (fp.sub RNE x4 x1))) (fp.sub RNE (fp.sub RNE x2 (fp.add RNE x5 x6)) (fp.roundToIntegral RNE x5))) (fp.add RNE (fp.mul RNE (fp.mul RNE x6 (fp.add RNE x8 x5)) (fp.div RNE x7 x9)) (fp.max (fp.abs x6) (fp.sub RNE x6 x3)))))))(check-sat)