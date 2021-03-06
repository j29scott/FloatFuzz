;  time  = {'z3': 600, 'mathsat': 25.776225805282593}
;  terms = 54
;  score = 574.2237741947174
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
(assert (fp.isSubnormal (fp.div RNE (fp.sub RNE (fp.sqrt RNE (fp.sqrt RNE (fp.sqrt RNE x2))) (fp.max (fp.div RNE (fp.mul RNE x2 x3) (fp.div RNE x8 x7)) (fp.div RNE (fp.sub RNE x0 (fp.min x0 x9)) (fp.sqrt RNE x6)))) (fp.sub RNE (fp.abs (fp.div RNE (fp.sub RNE (fp.div RNE x7 x7) (fp.neg x3)) (fp.div RNE (fp.div RNE x9 x0) (fp.sub RNE x0 x1)))) (fp.sqrt RNE (fp.max (fp.min (fp.min x2 x1) (fp.max x0 x1)) (fp.div RNE (fp.div RNE x1 x4) (fp.abs x6))))))))(check-sat)