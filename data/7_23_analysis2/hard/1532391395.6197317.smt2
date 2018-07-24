;  time  = 600
;  terms = 31
;  score = 600
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
(assert (fp.geq (fp.max (fp.rem (fp.rem x2 (fp.rem x3 x2)) (fp.rem x1 (fp.rem x2 x2))) (fp.neg (fp.rem x0 x0))) (fp.rem (fp.neg (fp.rem x3 x3)) (fp.mul RNE (fp.rem x1 x2) (fp.rem x1 (fp.rem x3 x2))))))
(check-sat)