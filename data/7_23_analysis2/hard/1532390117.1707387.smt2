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
(assert (fp.leq (fp.max (fp.max (fp.min x0 x0) (fp.fma RNE x2 x1 (fp.add RNE x2 x1))) (fp.add RNE (fp.roundToIntegral RNE x2) (fp.sqrt RNE x3))) (fp.div RNE (fp.rem (fp.add RNE x1 x2) (fp.abs x2)) (fp.sqrt RNE (fp.fma RNE (fp.add RNE x0 x3) (fp.rem x1 x3) (fp.sqrt RNE x0))))))
(check-sat)