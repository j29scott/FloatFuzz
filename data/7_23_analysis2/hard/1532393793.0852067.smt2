;  time  = 600
;  terms = 30
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
(assert (fp.gt (fp.rem (fp.rem (fp.mul RNE x2 x2) (fp.rem (fp.div RNE x0 x3) (fp.sub RNE x2 x1))) (fp.sqrt RNE (fp.rem x3 (fp.neg x0)))) (fp.abs (fp.fma RNE (fp.neg x2) (fp.rem x1 (fp.fma RNE x1 x0 x2)) (fp.abs x2)))))
(check-sat)