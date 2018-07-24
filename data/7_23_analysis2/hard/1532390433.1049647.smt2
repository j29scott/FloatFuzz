;  time  = 563.7558975219727
;  terms = 34
;  score = 563.7558975219727
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
(assert (fp.gt (fp.mul RNE (fp.add RNE (fp.fma RNE x1 x2 x2) (fp.div RNE x1 x3)) (fp.abs (fp.abs x1))) (fp.rem (fp.sub RNE (fp.min x1 x1) (fp.rem (fp.add RNE x3 x0) (fp.max x1 x3))) (fp.fma RNE (fp.roundToIntegral RNE x3) (fp.rem x0 x2) (fp.sub RNE x3 x2)))))
(check-sat)