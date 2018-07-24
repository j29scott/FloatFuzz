;  time  = 591.3589634895325
;  terms = 34
;  score = 591.3589634895325
;  stdout= sat

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
(assert (fp.geq (fp.fma RNE (fp.roundToIntegral RNE (fp.sqrt RNE x1)) (fp.min (fp.add RNE x0 x2) (fp.neg x3)) (fp.rem (fp.abs x0) (fp.fma RNE x3 x2 x1))) (fp.mul RNE (fp.div RNE (fp.rem x2 x1) (fp.rem x0 x1)) (fp.sub RNE (fp.min x0 x1) (fp.fma RNE x0 x3 x0)))))
(check-sat)