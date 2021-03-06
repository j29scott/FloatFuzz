;  time  = 600
;  terms = 29
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
(assert (fp.eq (fp.sub RNE (fp.mul RNE (fp.rem x0 x3) (fp.abs x1)) (fp.rem (fp.rem x2 x0) (fp.min x1 x3))) (fp.min (fp.min (fp.sub RNE x3 x3) (fp.neg x3)) (fp.max (fp.fma RNE x3 x3 x1) (fp.neg x3)))))
(check-sat)