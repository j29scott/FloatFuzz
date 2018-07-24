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
(assert (fp.eq (fp.rem (fp.neg (fp.sqrt RNE x2)) (fp.mul RNE (fp.min x1 x2) (fp.sub RNE x1 x3))) (fp.rem (fp.add RNE (fp.rem x1 x3) (fp.sqrt RNE x1)) (fp.fma RNE (fp.roundToIntegral RNE (fp.sqrt RNE x2)) (fp.sub RNE (fp.sub RNE x3 x0) (fp.div RNE x2 x3)) (fp.div RNE (fp.rem x2 x2) (fp.rem x0 x2))))))
(check-sat)