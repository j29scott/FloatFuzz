;  time  = 600
;  terms = 36
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
(assert (fp.lt (fp.sub RNE (fp.max (fp.rem x3 x2) (fp.div RNE x0 x3)) (fp.rem (fp.rem x1 (fp.div RNE x3 x2)) (fp.rem (fp.max x3 x1) (fp.sub RNE x3 x0)))) (fp.rem (fp.roundToIntegral RNE (fp.rem x1 x1)) (fp.mul RNE (fp.fma RNE x3 x1 x2) (fp.rem x3 (fp.sqrt RNE x3))))))
(check-sat)