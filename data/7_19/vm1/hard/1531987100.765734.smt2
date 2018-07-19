;  time  = 600
;  terms = 31
;  score = 1.0
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
(assert (fp.eq (fp.fma RNE (fp.abs (fp.rem x2 x0)) (fp.max (fp.div RNE x1 x3) (fp.div RNE x0 x1)) (fp.add RNE (fp.abs x3) (fp.sqrt RNE x3))) (fp.max (fp.fma RNE (fp.mul RNE x0 x1) (fp.min x1 x3) (fp.neg x1)) (fp.roundToIntegral RNE (fp.sqrt RNE x2)))))
(check-sat)