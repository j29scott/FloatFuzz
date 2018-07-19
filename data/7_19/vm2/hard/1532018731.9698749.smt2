;  time  = 540.7362937927246
;  terms = 23
;  score = 0.9012271563212076
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
(assert (fp.lt (fp.abs (fp.rem (fp.rem x3 x1) (fp.mul RNE x0 x2))) (fp.mul RNE (fp.rem (fp.div RNE x1 x3) (fp.min x0 x1)) (fp.sub RNE (fp.neg x2) (fp.sub RNE x2 x2)))))
(check-sat)