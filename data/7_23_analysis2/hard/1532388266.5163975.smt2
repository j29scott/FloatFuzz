;  time  = 600
;  terms = 32
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
(assert (fp.eq (fp.sub RNE (fp.rem (fp.rem x1 x2) (fp.min x0 x0)) (fp.min (fp.div RNE x3 x2) (fp.roundToIntegral RNE x3))) (fp.fma RNE (fp.sub RNE (fp.min x0 x1) (fp.add RNE x0 x1)) (fp.rem (fp.roundToIntegral RNE x1) (fp.abs x0)) (fp.roundToIntegral RNE (fp.min x3 x0)))))
(check-sat)