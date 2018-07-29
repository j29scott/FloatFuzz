;  time  = {'z3': 600}
;  terms = 68
;  score = 600
;  stdout= {'z3': 'timeout\n'}
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
(assert (fp.isSubnormal (fp.sub RNE (fp.max (fp.div RNE (fp.add RNE (fp.sqrt RNE x6) (fp.max x9 x4)) (fp.min (fp.sub RNE x9 x3) (fp.roundToIntegral RNE (fp.add RNE x8 x8)))) (fp.add RNE (fp.add RNE (fp.neg (fp.roundToIntegral RNE x4)) (fp.mul RNE (fp.div RNE x3 x7) (fp.neg x0))) (fp.sub RNE (fp.min (fp.sub RNE x0 x7) (fp.div RNE x6 x6)) (fp.div RNE (fp.sub RNE x2 x6) (fp.sub RNE x3 x4))))) (fp.add RNE (fp.div RNE (fp.div RNE (fp.add RNE x9 x2) (fp.min x8 x1)) (fp.div RNE (fp.div RNE x4 x1) (fp.abs (fp.sub RNE x8 x7)))) (fp.sqrt RNE (fp.min (fp.neg x2) (fp.mul RNE x4 x8)))))))(check-sat)