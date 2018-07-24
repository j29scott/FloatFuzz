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
(assert (fp.eq (fp.rem (fp.roundToIntegral RNE (fp.rem x2 (fp.sub RNE x0 x1))) (fp.sqrt RNE (fp.rem x2 (fp.max x0 x3)))) (fp.min (fp.rem (fp.div RNE x1 x0) (fp.abs x2)) (fp.rem (fp.sub RNE x1 x2) (fp.rem (fp.roundToIntegral RNE x3) (fp.div RNE x3 x0))))))
(check-sat)