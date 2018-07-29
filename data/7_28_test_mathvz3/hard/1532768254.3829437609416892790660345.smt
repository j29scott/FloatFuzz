;  time  = {'z3': 600, 'mathsat': 2.7443485260009766}
;  terms = 75
;  score = 597.255651473999
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
(assert (fp.isSubnormal (fp.max (fp.mul RNE (fp.roundToIntegral RNE (fp.mul RNE (fp.mul RNE x2 x9) (fp.neg x7))) (fp.sqrt RNE (fp.min (fp.mul RNE (fp.add RNE x5 x9) (fp.sqrt RNE x4)) (fp.abs (fp.div RNE x3 x2))))) (fp.max (fp.sub RNE (fp.min (fp.div RNE (fp.sub RNE x2 x7) (fp.max x6 x0)) (fp.sub RNE (fp.neg x3) (fp.add RNE x4 x4))) (fp.div RNE (fp.mul RNE (fp.abs x3) (fp.max x8 x7)) (fp.add RNE (fp.add RNE x7 x0) (fp.sub RNE x9 x9)))) (fp.div RNE (fp.neg (fp.div RNE (fp.roundToIntegral RNE x2) (fp.div RNE x5 x2))) (fp.add RNE (fp.min (fp.max x0 x5) (fp.mul RNE x2 x7)) (fp.mul RNE (fp.min x1 x5) (fp.mul RNE x3 x0))))))))(check-sat)