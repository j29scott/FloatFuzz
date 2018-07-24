;  time  = 600
;  terms = 44
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
(assert (fp.lt (fp.rem (fp.rem (fp.rem x2 x0) (fp.abs x1)) (fp.rem (fp.neg (fp.sqrt RNE x1)) (fp.roundToIntegral RNE (fp.div RNE x3 x0)))) (fp.rem (fp.rem (fp.rem x0 (fp.mul RNE x3 x3)) (fp.max x2 x2)) (fp.rem (fp.fma RNE (fp.sub RNE x2 x3) (fp.sub RNE x0 x1) (fp.max x0 x2)) (fp.min (fp.min x3 x0) (fp.max x1 x3))))))
(check-sat)