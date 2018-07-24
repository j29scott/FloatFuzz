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
(assert (fp.gt (fp.rem (fp.rem (fp.rem x2 (fp.roundToIntegral RNE x0)) (fp.rem x0 x3)) (fp.sub RNE (fp.add RNE x2 x1) (fp.div RNE x3 x3))) (fp.rem (fp.rem (fp.rem x0 x1) (fp.sqrt RNE x2)) (fp.rem (fp.min (fp.fma RNE x0 x2 x1) (fp.sqrt RNE x1)) (fp.add RNE (fp.sqrt RNE x1) (fp.rem x0 x3))))))
(check-sat)