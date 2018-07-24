;  time  = 600
;  terms = 41
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
(assert (fp.geq (fp.sub RNE (fp.rem (fp.sub RNE x2 x3) (fp.rem (fp.abs x1) (fp.max x3 x0))) (fp.rem (fp.min x1 x0) (fp.min x0 x2))) (fp.min (fp.rem (fp.div RNE x2 x2) (fp.rem x1 (fp.rem x0 x0))) (fp.rem (fp.mul RNE x1 x2) (fp.mul RNE (fp.rem x1 x2) (fp.fma RNE x3 x2 x2))))))
(check-sat)