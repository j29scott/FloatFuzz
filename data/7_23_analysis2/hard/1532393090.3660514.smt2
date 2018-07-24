;  time  = 600
;  terms = 45
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
(assert (fp.geq (fp.rem (fp.fma RNE (fp.rem x1 x0) (fp.fma RNE x2 x0 x0) (fp.sqrt RNE x2)) (fp.fma RNE (fp.min (fp.neg x2) (fp.rem x1 x3)) (fp.rem (fp.rem x0 x0) (fp.roundToIntegral RNE x2)) (fp.sqrt RNE (fp.min x1 x0)))) (fp.rem (fp.min (fp.fma RNE x1 x3 x0) (fp.add RNE x2 x3)) (fp.abs (fp.rem (fp.neg x2) (fp.min x0 x2))))))
(check-sat)