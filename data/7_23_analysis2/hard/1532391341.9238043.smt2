;  time  = 600
;  terms = 34
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
(assert (fp.geq (fp.fma RNE (fp.div RNE (fp.sqrt RNE x0) (fp.sqrt RNE x3)) (fp.fma RNE (fp.min x2 x1) (fp.fma RNE x0 (fp.rem x3 x1) (fp.roundToIntegral RNE x0)) (fp.rem x3 x2)) (fp.roundToIntegral RNE (fp.sub RNE x1 x2))) (fp.rem (fp.roundToIntegral RNE (fp.rem x3 x0)) (fp.abs (fp.rem x2 x0)))))
(check-sat)