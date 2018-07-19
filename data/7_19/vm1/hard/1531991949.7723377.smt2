;  time  = 578.0895009040833
;  terms = 26
;  score = 0.9634825015068054
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
(assert (fp.eq (fp.max (fp.add RNE (fp.div RNE x0 x2) (fp.mul RNE x1 x3)) (fp.sub RNE (fp.min x2 x1) (fp.neg x0))) (fp.rem (fp.max (fp.sub RNE x0 x0) (fp.abs x3)) (fp.sqrt RNE (fp.rem x3 x0)))))
(check-sat)