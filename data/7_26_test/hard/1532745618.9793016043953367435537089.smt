;  time  = {'mathsat': 49.4397337436676, 'z3': 600}
;  terms = 82
;  score = 550.5602662563324
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
(assert (fp.isSubnormal (fp.add RNE (fp.max (fp.min (fp.add RNE (fp.div RNE x0 x4) (fp.mul RNE (fp.sqrt RNE x8) (fp.min x2 x3))) (fp.min (fp.min x5 x7) (fp.add RNE x3 x6))) (fp.add RNE (fp.add RNE (fp.min x1 x4) (fp.max x8 x4)) (fp.mul RNE (fp.add RNE x2 (fp.add RNE x8 x2)) (fp.mul RNE x3 (fp.mul RNE x0 x4))))) (fp.add RNE (fp.add RNE (fp.mul RNE (fp.mul RNE (fp.add RNE x9 x7) (fp.add RNE x9 x9)) (fp.mul RNE (fp.sub RNE x2 x9) (fp.sqrt RNE x5))) (fp.mul RNE (fp.div RNE (fp.sub RNE x3 x1) (fp.mul RNE x3 x1)) (fp.add RNE (fp.mul RNE x0 x3) (fp.div RNE x1 x8)))) (fp.neg (fp.mul RNE (fp.abs (fp.neg x2)) (fp.add RNE (fp.mul RNE x0 x1) (fp.neg x3))))))))(check-sat)