;  time  = 600
;  terms = 46
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
(assert (fp.eq (fp.min (fp.mul RNE (fp.fma RNE x0 (fp.rem x2 x1) (fp.rem x1 x1)) (fp.div RNE x1 x1)) (fp.fma RNE (fp.roundToIntegral RNE x1) (fp.sqrt RNE (fp.rem x3 x1)) (fp.roundToIntegral RNE (fp.add RNE x0 x1)))) (fp.min (fp.neg (fp.abs x1)) (fp.fma RNE (fp.div RNE x3 x0) (fp.sqrt RNE (fp.mul RNE x2 x1)) (fp.fma RNE (fp.abs x2) (fp.div RNE x2 x1) (fp.sub RNE x3 x3))))))
(check-sat)