;  time  = 600
;  terms = 24
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
(assert (fp.eq (fp.rem (fp.abs (fp.min x2 x2)) (fp.fma RNE (fp.max x1 x3) (fp.neg x2) (fp.mul RNE x3 x3))) (fp.rem (fp.mul RNE (fp.sub RNE x0 x3) (fp.max x3 x0)) (fp.add RNE (fp.sub RNE x1 x2) (fp.fma RNE x0 x3 x0)))))
(check-sat)