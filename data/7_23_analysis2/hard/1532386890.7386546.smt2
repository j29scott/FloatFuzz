;  time  = 600
;  terms = 37
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
(assert (fp.eq (fp.sub RNE (fp.abs (fp.sub RNE x3 x2)) (fp.div RNE (fp.fma RNE x2 x0 x0) (fp.div RNE (fp.fma RNE x3 x0 x2) (fp.roundToIntegral RNE x1)))) (fp.fma RNE (fp.div RNE (fp.sqrt RNE x0) (fp.roundToIntegral RNE x3)) (fp.min (fp.rem x3 x2) (fp.sqrt RNE x0)) (fp.rem (fp.mul RNE x0 x2) (fp.max x2 x3)))))
(check-sat)