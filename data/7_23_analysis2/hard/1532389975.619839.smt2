;  time  = 600
;  terms = 33
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
(assert (fp.eq (fp.abs (fp.fma RNE (fp.div RNE x2 x1) (fp.neg x0) (fp.sqrt RNE (fp.fma RNE x2 x0 x3)))) (fp.rem (fp.fma RNE (fp.mul RNE x0 x0) (fp.add RNE x1 x0) (fp.fma RNE x3 x1 x3)) (fp.fma RNE (fp.abs x1) (fp.mul RNE x2 x3) (fp.abs x0)))))
(check-sat)