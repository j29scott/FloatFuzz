;  time  = {'mathsat': 56.633583545684814, 'z3': 600}
;  terms = 88
;  score = 543.3664164543152
;  stdout= {'mathsat': 'sat', 'z3': 'timeout\n'}
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
(assert (fp.isSubnormal (fp.sub RNE (fp.div RNE (fp.sub RNE (fp.add RNE (fp.max x3 x9) (fp.max (fp.mul RNE x3 x0) (fp.sqrt RNE x9))) (fp.min (fp.sqrt RNE x2) (fp.mul RNE (fp.add RNE x6 x1) (fp.roundToIntegral RNE x2)))) (fp.sub RNE (fp.abs (fp.add RNE x3 x1)) (fp.sub RNE (fp.min x8 (fp.sub RNE x6 x3)) (fp.sub RNE x2 x6)))) (fp.div RNE (fp.div RNE (fp.max (fp.sub RNE (fp.div RNE x9 x6) (fp.mul RNE x2 x1)) (fp.add RNE (fp.div RNE x5 x8) (fp.min x7 x5))) (fp.mul RNE (fp.sub RNE (fp.mul RNE x3 x5) (fp.add RNE x8 x8)) (fp.abs (fp.add RNE x5 x5)))) (fp.min (fp.max (fp.add RNE (fp.sub RNE x1 x9) (fp.neg x5)) (fp.max (fp.sqrt RNE x4) (fp.add RNE x7 x7))) (fp.div RNE (fp.abs (fp.roundToIntegral RNE x8)) (fp.sqrt RNE (fp.add RNE x0 x7))))))))(check-sat)