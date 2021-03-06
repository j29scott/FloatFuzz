;  time  = {'z3': 600, 'mathsat': 99.8910665512085}
;  terms = 60
;  score = 500.1089334487915
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
(assert (fp.isSubnormal (fp.div RNE (fp.div RNE (fp.mul RNE (fp.neg (fp.neg x5)) (fp.sub RNE (fp.abs x5) (fp.div RNE x3 (fp.mul RNE x3 x3)))) (fp.max (fp.div RNE (fp.div RNE x3 (fp.add RNE x7 x0)) (fp.add RNE x4 x1)) (fp.abs (fp.sub RNE (fp.min x6 x1) (fp.neg x5))))) (fp.mul RNE (fp.mul RNE (fp.sub RNE (fp.mul RNE x8 x1) (fp.sqrt RNE (fp.neg x6))) (fp.roundToIntegral RNE (fp.mul RNE x5 x7))) (fp.abs (fp.add RNE (fp.add RNE (fp.min x9 x8) (fp.sub RNE x4 x6)) (fp.div RNE (fp.sqrt RNE x4) (fp.max x2 x8))))))))(check-sat)