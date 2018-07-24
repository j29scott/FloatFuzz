;  time  = 600
;  terms = 43
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
(assert (fp.gt (fp.fma RNE (fp.rem (fp.mul RNE x1 x2) (fp.max (fp.mul RNE x3 x3) (fp.rem x2 x1))) (fp.sqrt RNE (fp.sub RNE x3 x0)) (fp.rem (fp.sub RNE x2 x1) (fp.rem x0 x2))) (fp.rem (fp.sqrt RNE (fp.add RNE x3 x3)) (fp.mul RNE (fp.div RNE (fp.neg x0) (fp.div RNE x2 x3)) (fp.max (fp.roundToIntegral RNE x0) (fp.fma RNE x2 x0 x0))))))
(check-sat)