;  time  = 600
;  terms = 27
;  score = 1.0
;  stdout = timeout

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
(assert (fp.gt (fp.rem (fp.sqrt RNE (fp.abs x3)) (fp.abs (fp.max x2 x3))) (fp.fma RNE (fp.div RNE (fp.fma RNE x3 x0 x0) (fp.roundToIntegral RNE x2)) (fp.rem (fp.sub RNE x2 x3) (fp.rem x3 x1)) (fp.sqrt RNE (fp.sub RNE x1 x2)))))
(check-sat)