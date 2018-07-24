;  time  = 600
;  terms = 37
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
(assert (fp.leq (fp.rem (fp.div RNE (fp.neg x0) (fp.div RNE x1 x1)) (fp.roundToIntegral RNE (fp.rem x3 x2))) (fp.rem (fp.min (fp.rem x3 (fp.fma RNE x0 x1 x3)) (fp.rem x2 x0)) (fp.rem (fp.rem (fp.neg x3) (fp.rem x1 x1)) (fp.rem (fp.rem x1 x2) (fp.rem x3 x2))))))
(check-sat)