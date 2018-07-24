;  time  = 600
;  terms = 53
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
(assert (fp.eq (fp.fma RNE (fp.min (fp.rem x1 x3) (fp.sqrt RNE x3)) (fp.sub RNE (fp.rem (fp.mul RNE x2 x2) (fp.sqrt RNE x0)) (fp.fma RNE (fp.div RNE x2 x1) (fp.mul RNE x0 x3) (fp.sqrt RNE x3))) (fp.rem (fp.fma RNE (fp.mul RNE x1 x1) (fp.roundToIntegral RNE x0) (fp.max x2 x2)) (fp.sub RNE (fp.mul RNE x0 x0) (fp.div RNE x0 x0)))) (fp.add RNE (fp.neg (fp.max x2 x3)) (fp.mul RNE (fp.min x0 x0) (fp.max x1 x2)))))
(check-sat)