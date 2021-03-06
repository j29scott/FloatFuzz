;  time  = {'z3': 600, 'mathsat': 7.7343220710754395}
;  terms = 76
;  score = 592.2656779289246
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
(assert (fp.isNaN (fp.mul RNE (fp.div RNE (fp.min (fp.div RNE (fp.sqrt RNE x2) (fp.min x5 x3)) (fp.div RNE (fp.mul RNE (fp.mul RNE x9 x3) (fp.mul RNE x1 x5)) (fp.div RNE (fp.div RNE x9 x0) (fp.abs x2)))) (fp.abs (fp.mul RNE (fp.div RNE x2 (fp.mul RNE x1 x6)) (fp.sub RNE x7 x7)))) (fp.min (fp.div RNE (fp.div RNE (fp.sqrt RNE x2) (fp.div RNE (fp.abs x0) (fp.sqrt RNE x0))) (fp.mul RNE (fp.mul RNE x8 (fp.div RNE x4 x9)) (fp.max (fp.div RNE x3 x7) (fp.mul RNE x1 x9)))) (fp.mul RNE (fp.mul RNE (fp.div RNE x9 x3) (fp.neg (fp.mul RNE x3 x2))) (fp.div RNE (fp.min x2 x1) (fp.min (fp.sqrt RNE x4) (fp.mul RNE x8 x8))))))))(check-sat)