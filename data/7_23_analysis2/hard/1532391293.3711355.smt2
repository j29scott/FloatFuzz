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
(assert (fp.eq (fp.max (fp.sub RNE (fp.sub RNE x0 x1) (fp.mul RNE x2 x0)) (fp.rem (fp.fma RNE x1 x2 x1) (fp.neg x0))) (fp.min (fp.rem (fp.div RNE x2 x1) (fp.fma RNE x0 x3 x1)) (fp.max (fp.min x0 x0) (fp.roundToIntegral RNE x2)))))
(check-sat)