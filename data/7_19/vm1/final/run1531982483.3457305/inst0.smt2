;  time  = 600
;  terms = 25
;  score = 1.0
;  stdout = timeout

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
(assert (fp.lt (fp.rem (fp.min (fp.rem x3 x2) (fp.min x3 x2)) (fp.mul RNE (fp.sqrt RNE x3) (fp.rem x1 x0))) (fp.rem (fp.add RNE (fp.fma RNE x1 x2 x0) (fp.neg x3)) (fp.fma RNE (fp.min x0 x2) (fp.sqrt RNE x3) (fp.max x1 x3)))))
(check-sat)