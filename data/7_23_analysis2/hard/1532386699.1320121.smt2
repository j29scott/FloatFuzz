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
(assert (fp.lt (fp.div RNE (fp.div RNE (fp.div RNE x1 (fp.neg x3)) (fp.min x2 x3)) (fp.div RNE (fp.neg x1) (fp.div RNE (fp.min x3 x3) (fp.abs x3)))) (fp.sub RNE (fp.rem (fp.div RNE x1 x0) (fp.rem x3 x0)) (fp.div RNE (fp.rem x0 x0) (fp.sqrt RNE (fp.roundToIntegral RNE x3))))))
(check-sat)