;  time  = 600
;  terms = 28
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
(assert (fp.leq (fp.rem (fp.abs (fp.sqrt RNE x1)) (fp.sqrt RNE (fp.mul RNE x1 x1))) (fp.rem (fp.rem (fp.div RNE x2 x0) (fp.div RNE x2 x0)) (fp.fma RNE (fp.div RNE x3 x1) (fp.mul RNE x0 x3) (fp.fma RNE x1 x0 x2)))))
(check-sat)