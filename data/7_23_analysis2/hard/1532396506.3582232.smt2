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
(assert (fp.leq (fp.rem (fp.add RNE (fp.sub RNE x1 x2) (fp.rem x1 x0)) (fp.div RNE (fp.rem (fp.rem x1 x2) (fp.rem x3 x1)) (fp.rem (fp.rem x2 x2) (fp.sub RNE x0 x3)))) (fp.rem (fp.rem (fp.max x0 x2) (fp.add RNE (fp.sub RNE x3 x0) (fp.roundToIntegral RNE x1))) (fp.add RNE (fp.abs (fp.neg x3)) (fp.div RNE (fp.roundToIntegral RNE x1) (fp.sub RNE x3 x0))))))
(check-sat)