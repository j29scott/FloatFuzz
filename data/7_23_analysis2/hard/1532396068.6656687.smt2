;  time  = 600
;  terms = 22
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
(assert (fp.gt (fp.sqrt RNE (fp.rem (fp.sub RNE x1 x1) (fp.sqrt RNE x1))) (fp.rem (fp.min (fp.roundToIntegral RNE x3) (fp.rem x3 (fp.rem x2 x3))) (fp.rem (fp.roundToIntegral RNE x0) (fp.roundToIntegral RNE x3)))))
(check-sat)