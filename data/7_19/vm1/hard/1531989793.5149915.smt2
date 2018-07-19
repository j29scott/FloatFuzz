;  time  = 600
;  terms = 26
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
(assert (fp.eq (fp.abs (fp.sqrt RNE (fp.min x0 x1))) (fp.fma RNE (fp.fma RNE (fp.max x2 x0) (fp.sqrt RNE x2) (fp.rem x0 x1)) (fp.min (fp.neg x2) (fp.div RNE x2 x3)) (fp.roundToIntegral RNE (fp.rem x3 x1)))))
(check-sat)