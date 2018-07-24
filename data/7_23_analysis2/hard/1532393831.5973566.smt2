;  time  = 574.3214418888092
;  terms = 26
;  score = 574.3214418888092
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
(assert (fp.isZero (fp.rem (fp.rem (fp.rem x1 x1) (fp.rem x0 (fp.min x0 x1))) (fp.rem (fp.rem (fp.min x0 x3) (fp.abs x3)) (fp.div RNE (fp.fma RNE x1 x3 x0) (fp.rem x0 x1))))))
(check-sat)