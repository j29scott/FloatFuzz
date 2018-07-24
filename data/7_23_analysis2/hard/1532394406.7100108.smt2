;  time  = 600
;  terms = 33
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
(assert (fp.eq (fp.div RNE (fp.add RNE (fp.rem x2 x2) (fp.rem x2 (fp.rem x1 x3))) (fp.rem (fp.rem x3 x3) (fp.sub RNE x3 x0))) (fp.add RNE (fp.rem (fp.rem x1 x2) (fp.min (fp.rem x1 x0) (fp.abs x1))) (fp.roundToIntegral RNE (fp.max x1 x1)))))
(check-sat)