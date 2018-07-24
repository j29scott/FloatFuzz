;  time  = 600
;  terms = 38
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
(assert (fp.leq (fp.rem (fp.min (fp.div RNE x3 x2) (fp.div RNE x2 x0)) (fp.rem (fp.fma RNE x1 x1 x2) (fp.rem (fp.rem x3 x0) (fp.mul RNE x1 x1)))) (fp.mul RNE (fp.neg (fp.rem x3 x0)) (fp.rem (fp.rem x3 (fp.roundToIntegral RNE x2)) (fp.add RNE (fp.div RNE x3 x3) (fp.rem x1 x3))))))
(check-sat)