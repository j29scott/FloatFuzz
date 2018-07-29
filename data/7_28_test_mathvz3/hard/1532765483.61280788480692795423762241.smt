;  time  = {'mathsat': 116.03568077087402, 'z3': 600}
;  terms = 68
;  score = 483.964319229126
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
(assert (fp.isSubnormal (fp.sub RNE (fp.max (fp.neg (fp.mul RNE (fp.div RNE x3 x0) (fp.min x2 x8))) (fp.sub RNE (fp.add RNE (fp.min (fp.sqrt RNE x2) (fp.neg x0)) (fp.min (fp.neg x9) (fp.sqrt RNE x1))) (fp.div RNE (fp.max (fp.sqrt RNE x3) (fp.mul RNE x2 x9)) (fp.add RNE (fp.div RNE x7 x7) (fp.mul RNE x9 x4))))) (fp.mul RNE (fp.max (fp.sub RNE (fp.sqrt RNE x7) (fp.max x1 x3)) (fp.min (fp.sub RNE x9 x5) (fp.sqrt RNE x5))) (fp.sub RNE (fp.min (fp.add RNE x4 x3) (fp.add RNE x8 x0)) (fp.div RNE (fp.min (fp.sqrt RNE x6) (fp.sqrt RNE x3)) (fp.sqrt RNE (fp.sqrt RNE x6))))))))(check-sat)