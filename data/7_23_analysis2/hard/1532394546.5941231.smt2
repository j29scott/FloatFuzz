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
(assert (fp.eq (fp.div RNE (fp.sqrt RNE (fp.rem x2 x2)) (fp.rem (fp.rem x1 (fp.div RNE x1 x3)) (fp.rem x3 x1))) (fp.fma RNE (fp.max (fp.rem x3 x3) (fp.div RNE x2 x3)) (fp.mul RNE (fp.rem x2 x1) (fp.div RNE x3 x3)) (fp.add RNE (fp.div RNE x2 x2) (fp.rem x3 x1)))))
(check-sat)