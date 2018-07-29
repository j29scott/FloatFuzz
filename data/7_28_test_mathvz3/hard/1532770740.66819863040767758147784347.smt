;  time  = {'z3': 600, 'mathsat': 600}
;  terms = 73
;  score = 0
;  stdout= {'z3': 'timeout\n', 'mathsat': ''}
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
(assert (fp.isSubnormal (fp.add RNE (fp.mul RNE (fp.sub RNE (fp.add RNE (fp.add RNE x7 x3) (fp.sub RNE (fp.div RNE x4 x9) (fp.div RNE x5 x9))) (fp.div RNE (fp.mul RNE x4 x1) (fp.roundToIntegral RNE (fp.min x5 x1)))) (fp.sub RNE (fp.neg (fp.sqrt RNE x8)) (fp.div RNE (fp.sub RNE x7 x6) (fp.sqrt RNE x3)))) (fp.div RNE (fp.mul RNE (fp.div RNE (fp.sub RNE x7 x4) (fp.roundToIntegral RNE (fp.div RNE x4 x3))) (fp.add RNE (fp.div RNE (fp.add RNE x8 x6) (fp.add RNE x6 x3)) (fp.mul RNE (fp.add RNE x4 x0) (fp.neg x6)))) (fp.sqrt RNE (fp.div RNE (fp.div RNE (fp.div RNE x7 x9) (fp.min x5 x8)) (fp.mul RNE (fp.max x6 x8) (fp.add RNE x6 x1))))))))(check-sat)