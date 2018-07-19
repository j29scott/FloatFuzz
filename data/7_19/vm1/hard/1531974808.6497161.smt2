;  time  = 600
;  terms = 30
;  score = 1.0
;  stdout= timeout

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
(assert (fp.eq (fp.fma RNE (fp.max (fp.rem x2 x3) (fp.mul RNE x3 x0)) (fp.neg (fp.fma RNE x2 x1 x0)) (fp.neg (fp.min x0 x1))) (fp.max (fp.neg (fp.div RNE x1 x3)) (fp.rem (fp.min x3 x2) (fp.max x1 x1)))))
(check-sat)