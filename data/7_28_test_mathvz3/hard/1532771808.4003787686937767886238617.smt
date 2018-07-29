;  time  = {'z3': 574.655, 'mathsat': 3.8350205421447754}
;  terms = 80
;  score = 570.8199794578552
;  stdout= {'z3': 'sat\n', 'mathsat': 'sat'}
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
(assert (fp.isSubnormal (fp.min (fp.max (fp.div RNE (fp.div RNE (fp.roundToIntegral RNE x3) (fp.sub RNE x5 x8)) (fp.add RNE (fp.mul RNE (fp.min x3 x7) (fp.div RNE x1 x0)) (fp.sub RNE (fp.min x4 x0) (fp.sub RNE x5 x9)))) (fp.div RNE (fp.div RNE (fp.min x5 x6) (fp.roundToIntegral RNE x5)) (fp.div RNE (fp.add RNE (fp.mul RNE x8 x5) (fp.add RNE x5 x2)) (fp.add RNE (fp.min x7 x1) (fp.sqrt RNE x4))))) (fp.add RNE (fp.sqrt RNE (fp.min (fp.mul RNE (fp.div RNE x9 x4) (fp.div RNE x6 x0)) (fp.sqrt RNE (fp.mul RNE x3 x6)))) (fp.min (fp.roundToIntegral RNE (fp.sub RNE (fp.mul RNE x2 x4) (fp.add RNE x0 x7))) (fp.add RNE (fp.min (fp.neg x3) (fp.mul RNE x5 x2)) (fp.neg (fp.add RNE x4 x8))))))))(check-sat)