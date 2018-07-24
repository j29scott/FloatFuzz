;  time  = 600
;  terms = 28
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
(assert (fp.geq (fp.roundToIntegral RNE (fp.rem (fp.div RNE x3 x1) (fp.rem x0 (fp.rem x2 x0)))) (fp.rem (fp.rem (fp.roundToIntegral RNE x1) (fp.rem x1 (fp.sub RNE x2 x3))) (fp.abs (fp.min (fp.add RNE x1 x2) (fp.div RNE x1 x2))))))
(check-sat)