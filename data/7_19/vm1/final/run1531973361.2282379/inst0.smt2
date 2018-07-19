;  time  = 600
;  terms = 21
;  score = 1.0
;  stdout = timeout

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
(assert (fp.eq (fp.div RNE (fp.add RNE (fp.rem x1 x2) (fp.sub RNE x2 x1)) (fp.sub RNE (fp.fma RNE x0 x1 x1) (fp.neg x3))) (fp.mul RNE (fp.fma RNE (fp.add RNE x0 x1) (fp.mul RNE x1 x2) (fp.max x1 x1)) (fp.abs (fp.neg x1)))))
(check-sat)