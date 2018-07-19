;  time  = 558.4472365379333
;  terms = 28
;  score = 0.9307453942298889
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
(assert (fp.eq (fp.max (fp.add RNE (fp.div RNE x0 x2) (fp.mul RNE x1 x3)) (fp.sub RNE (fp.min x2 x1) (fp.neg x0))) (fp.mul RNE (fp.sqrt RNE (fp.rem x1 x0)) (fp.add RNE (fp.rem x0 x1) (fp.fma RNE x1 x2 x3)))))
(check-sat)