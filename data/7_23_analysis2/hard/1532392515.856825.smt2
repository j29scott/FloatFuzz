;  time  = 549.3323261737823
;  terms = 42
;  score = 549.3323261737823
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
(assert (fp.gt (fp.max (fp.mul RNE (fp.abs x1) (fp.sqrt RNE x1)) (fp.fma RNE (fp.mul RNE x0 x3) (fp.fma RNE x2 x2 x2) (fp.rem x3 x2))) (fp.rem (fp.max (fp.add RNE x1 x3) (fp.mul RNE x3 x1)) (fp.sub RNE (fp.min (fp.fma RNE x3 x2 x0) (fp.mul RNE x3 x3)) (fp.min (fp.sub RNE x2 x3) (fp.rem x0 x1))))))
(check-sat)