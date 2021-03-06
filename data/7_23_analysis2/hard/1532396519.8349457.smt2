;  time  = 600
;  terms = 39
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
(assert (fp.leq (fp.rem (fp.rem (fp.rem x0 x0) (fp.sub RNE (fp.sub RNE x1 x0) (fp.min x2 x2))) (fp.roundToIntegral RNE (fp.rem (fp.max x1 x1) (fp.sqrt RNE x0)))) (fp.rem (fp.div RNE (fp.roundToIntegral RNE x1) (fp.div RNE x3 x1)) (fp.fma RNE (fp.min x3 x0) (fp.rem x0 (fp.max x1 x2)) (fp.rem x0 x1)))))
(check-sat)