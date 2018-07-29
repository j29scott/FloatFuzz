;  time  = {'mathsat': 169.45336508750916, 'z3': 600}
;  terms = 51
;  score = 430.54663491249084
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
(assert (fp.isSubnormal (fp.div RNE (fp.mul RNE (fp.sub RNE (fp.abs (fp.abs x0)) (fp.div RNE (fp.sqrt RNE (fp.div RNE x1 x7)) (fp.div RNE (fp.abs x9) (fp.add RNE x9 x7)))) (fp.mul RNE (fp.abs (fp.sub RNE (fp.add RNE x5 x6) (fp.min x4 x7))) (fp.div RNE (fp.sub RNE (fp.div RNE x3 x9) (fp.sub RNE x3 x9)) (fp.div RNE (fp.sub RNE x2 x4) (fp.abs x1))))) (fp.abs (fp.abs (fp.sub RNE (fp.sub RNE x6 (fp.mul RNE x0 x8)) (fp.abs x9)))))))(check-sat)