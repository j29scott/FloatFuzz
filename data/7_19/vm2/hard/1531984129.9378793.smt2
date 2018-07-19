;  time  = 600
;  terms = 33
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
(assert (fp.eq (fp.div RNE (fp.add RNE (fp.add RNE x1 x0) (fp.max x0 x3)) (fp.sqrt RNE (fp.max x3 x3))) (fp.fma RNE (fp.rem (fp.add RNE x0 x1) (fp.neg x3)) (fp.min (fp.roundToIntegral RNE x1) (fp.mul RNE x3 x1)) (fp.rem (fp.add RNE x2 x1) (fp.rem x3 x2)))))
(check-sat)