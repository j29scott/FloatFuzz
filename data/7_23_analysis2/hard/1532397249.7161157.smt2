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
(assert (fp.eq (fp.rem (fp.div RNE (fp.rem x2 (fp.add RNE x1 x3)) (fp.min x3 x3)) (fp.div RNE (fp.fma RNE x3 x2 x1) (fp.sqrt RNE x0))) (fp.sub RNE (fp.rem (fp.rem x0 x2) (fp.div RNE (fp.roundToIntegral RNE x0) (fp.add RNE x0 x0))) (fp.rem (fp.rem x2 (fp.min x3 x3)) (fp.max x2 x1)))))
(check-sat)