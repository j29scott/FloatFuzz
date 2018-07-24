;  time  = 579.5709102153778
;  terms = 29
;  score = 579.5709102153778
;  stdout= sat

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
(assert (fp.eq (fp.neg (fp.add RNE (fp.max x2 x1) (fp.rem x1 x3))) (fp.fma RNE (fp.fma RNE (fp.abs x1) (fp.max x0 x0) (fp.abs x2)) (fp.sqrt RNE (fp.add RNE x0 x3)) (fp.mul RNE (fp.fma RNE x2 x2 x1) (fp.abs x2)))))
(check-sat)