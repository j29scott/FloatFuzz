;  time  = 600
;  terms = 23
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
(assert (fp.gt (fp.rem (fp.mul RNE (fp.roundToIntegral RNE x3) (fp.sqrt RNE x1)) (fp.roundToIntegral RNE (fp.rem x0 x2))) (fp.div RNE (fp.div RNE (fp.neg x0) (fp.mul RNE x1 x1)) (fp.sub RNE (fp.roundToIntegral RNE x0) (fp.roundToIntegral RNE x0)))))
(check-sat)