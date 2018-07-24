;  time  = 600
;  terms = 26
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
(assert (fp.isZero (fp.rem (fp.add RNE (fp.div RNE x2 x1) (fp.add RNE x3 x3)) (fp.fma RNE (fp.add RNE (fp.roundToIntegral RNE x0) (fp.rem x2 x3)) (fp.div RNE (fp.neg x3) (fp.div RNE x2 x2)) (fp.neg (fp.rem x3 x1))))))
(check-sat)