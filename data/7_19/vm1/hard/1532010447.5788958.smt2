;  time  = 561.203277349472
;  terms = 30
;  score = 0.9353387955824534
;  stdout= sat

(set-logic QF_FP)
(declare-const x0 (_ FloatingPoint 8 24))
(declare-const x1 (_ FloatingPoint 8 24))
(declare-const x2 (_ FloatingPoint 8 24))
(declare-const x3 (_ FloatingPoint 8 24))
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
(assert (fp.eq (fp.mul RNE (fp.fma RNE (fp.mul RNE x3 x1) (fp.mul RNE x0 x2) (fp.mul RNE x3 x1)) (fp.fma RNE (fp.rem x1 x1) (fp.rem x0 x3) (fp.rem x3 x1))) (fp.sub RNE (fp.abs (fp.mul RNE x2 x2)) (fp.neg (fp.sqrt RNE x0)))))
(check-sat)