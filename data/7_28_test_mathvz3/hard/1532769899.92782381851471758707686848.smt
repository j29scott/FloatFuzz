;  time  = {'mathsat': 22.365893602371216, 'z3': 600}
;  terms = 79
;  score = 577.6341063976288
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
(assert (fp.isNormal (fp.div RNE (fp.div RNE (fp.max (fp.add RNE (fp.div RNE x9 x0) (fp.max (fp.max x9 x2) (fp.max x2 x5))) (fp.div RNE (fp.div RNE (fp.div RNE x6 x6) (fp.div RNE x2 x8)) (fp.div RNE (fp.add RNE x1 x6) (fp.mul RNE x8 x8)))) (fp.max (fp.div RNE (fp.div RNE (fp.mul RNE x5 x7) (fp.neg x9)) (fp.add RNE (fp.add RNE x5 x2) (fp.add RNE x7 x1))) (fp.neg (fp.max (fp.max x0 x1) (fp.mul RNE x6 x3))))) (fp.abs (fp.div RNE (fp.sub RNE (fp.add RNE (fp.max x9 x4) (fp.div RNE x1 x2)) (fp.neg (fp.max x1 x9))) (fp.div RNE (fp.div RNE (fp.neg x0) (fp.abs x2)) (fp.div RNE (fp.neg x0) (fp.add RNE x9 x1))))))))(check-sat)