;  time  = 600
;  terms = 30
;  score = 1.0
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
(assert (fp.leq (fp.rem (fp.max (fp.mul RNE x0 x1) (fp.max x3 x1)) (fp.rem (fp.fma RNE x3 x0 x2) (fp.rem x3 x1))) (fp.sub RNE (fp.min (fp.neg x1) (fp.add RNE x0 x3)) (fp.div RNE (fp.add RNE x0 x0) (fp.abs x1)))))
(check-sat)