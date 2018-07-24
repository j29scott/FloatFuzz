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
(assert (fp.lt (fp.rem (fp.rem (fp.roundToIntegral RNE x1) (fp.fma RNE x3 x3 x1)) (fp.add RNE (fp.sqrt RNE x3) (fp.div RNE x0 x3))) (fp.div RNE (fp.sqrt RNE (fp.rem x2 x1)) (fp.fma RNE (fp.abs x1) (fp.rem x0 x2) (fp.sqrt RNE x3)))))
(check-sat)