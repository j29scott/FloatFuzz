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
(assert (fp.eq (fp.fma RNE (fp.max (fp.add RNE x2 x3) (fp.rem x2 x0)) (fp.roundToIntegral RNE (fp.fma RNE x1 x0 x3)) (fp.rem (fp.div RNE (fp.abs x0) (fp.div RNE x0 x0)) (fp.add RNE (fp.rem x2 x0) (fp.sqrt RNE x1)))) (fp.fma RNE (fp.rem (fp.sqrt RNE x1) (fp.fma RNE x0 x2 x0)) (fp.sub RNE (fp.abs x0) (fp.abs x0)) (fp.roundToIntegral RNE (fp.max x0 x0)))))
(check-sat)