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
(assert (fp.lt (fp.sub RNE (fp.mul RNE (fp.min x1 x2) (fp.roundToIntegral RNE x2)) (fp.rem (fp.rem x2 x0) (fp.rem x1 x3))) (fp.fma RNE (fp.rem (fp.mul RNE x2 x0) (fp.abs x1)) (fp.fma RNE (fp.fma RNE x1 x3 x3) (fp.max x3 x0) (fp.sub RNE x2 x0)) (fp.fma RNE (fp.rem x1 (fp.fma RNE x0 x0 x1)) (fp.neg x2) (fp.div RNE x2 x1)))))
(check-sat)