;  time  = 600
;  terms = 30
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
(assert (fp.isSubnormal (fp.rem (fp.add RNE (fp.rem x0 x0) (fp.rem x1 (fp.rem x2 x2))) (fp.fma RNE (fp.fma RNE (fp.sqrt RNE x1) (fp.add RNE x1 x2) (fp.rem x3 x3)) (fp.rem (fp.roundToIntegral RNE x1) (fp.roundToIntegral RNE x2)) (fp.neg (fp.add RNE x2 x1))))))
(check-sat)