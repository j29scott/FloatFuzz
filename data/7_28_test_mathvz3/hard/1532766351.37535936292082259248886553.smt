;  time  = {'z3': 600, 'mathsat': 54.00028610229492}
;  terms = 81
;  score = 545.9997138977051
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
(assert (fp.isSubnormal (fp.sub RNE (fp.add RNE (fp.mul RNE (fp.mul RNE (fp.div RNE x3 x0) (fp.mul RNE (fp.div RNE x6 x7) (fp.mul RNE x1 x3))) (fp.sub RNE (fp.sub RNE x5 x9) (fp.sub RNE x9 (fp.neg x5)))) (fp.max (fp.mul RNE (fp.sub RNE (fp.mul RNE x8 x6) (fp.roundToIntegral RNE x9)) (fp.max (fp.add RNE x6 x1) (fp.mul RNE x2 x3))) (fp.mul RNE (fp.min (fp.mul RNE x5 x5) (fp.max x6 x6)) (fp.mul RNE (fp.mul RNE x1 x4) (fp.mul RNE x3 x0))))) (fp.add RNE (fp.neg (fp.add RNE (fp.div RNE x1 x7) (fp.min x4 x1))) (fp.div RNE (fp.sub RNE (fp.div RNE x2 x5) (fp.sub RNE x4 x4)) (fp.sub RNE (fp.mul RNE x2 x1) (fp.mul RNE (fp.div RNE x9 x1) (fp.mul RNE x6 x7))))))))(check-sat)