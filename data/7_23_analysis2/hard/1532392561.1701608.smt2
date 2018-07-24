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
(assert (fp.eq (fp.abs (fp.rem (fp.neg x3) (fp.roundToIntegral RNE x1))) (fp.rem (fp.rem (fp.rem x1 x2) (fp.neg x3)) (fp.div RNE (fp.div RNE (fp.div RNE x2 x3) (fp.neg x0)) (fp.sub RNE (fp.roundToIntegral RNE x2) (fp.fma RNE x2 x0 x1))))))
(check-sat)