;  time  = 600
;  terms = 29
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
(assert (fp.eq (fp.add RNE (fp.rem (fp.abs x1) (fp.max x1 x0)) (fp.max (fp.abs x1) (fp.sub RNE x3 x2))) (fp.rem (fp.min (fp.fma RNE x1 x2 (fp.sqrt RNE x1)) (fp.sqrt RNE x1)) (fp.sub RNE (fp.sub RNE x2 x3) (fp.neg x1)))))
(check-sat)