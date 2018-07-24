;  time  = 600
;  terms = 55
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
(assert (fp.gt (fp.rem (fp.rem (fp.rem x2 x1) (fp.sub RNE x2 x3)) (fp.neg (fp.fma RNE x3 (fp.sub RNE x3 x2) (fp.mul RNE x1 x3)))) (fp.fma RNE (fp.neg (fp.fma RNE x2 x1 (fp.fma RNE x1 x3 x2))) (fp.fma RNE (fp.roundToIntegral RNE x1) (fp.fma RNE (fp.div RNE x3 x0) (fp.max x3 x2) (fp.rem x0 x0)) (fp.fma RNE (fp.abs x3) (fp.add RNE x3 x0) (fp.rem x0 x3))) (fp.add RNE (fp.abs x3) (fp.add RNE x2 x2)))))
(check-sat)