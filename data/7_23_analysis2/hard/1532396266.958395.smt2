;  time  = 600
;  terms = 32
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
(assert (fp.geq (fp.max (fp.mul RNE (fp.rem x1 x3) (fp.abs x3)) (fp.fma RNE (fp.rem x0 x2) (fp.sqrt RNE x1) (fp.sub RNE x0 x3))) (fp.rem (fp.mul RNE (fp.div RNE x3 x3) (fp.div RNE x0 x2)) (fp.rem (fp.abs x3) (fp.fma RNE x3 x2 x3)))))
(check-sat)