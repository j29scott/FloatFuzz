;  time  = 584.5365710258484
;  terms = 43
;  score = 584.5365710258484
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
(assert (fp.eq (fp.div RNE (fp.sub RNE (fp.add RNE x2 x3) (fp.mul RNE x0 x3)) (fp.div RNE (fp.div RNE x2 x2) (fp.min (fp.rem x3 x1) (fp.rem x2 x2)))) (fp.fma RNE (fp.rem (fp.fma RNE x0 x1 x2) (fp.div RNE x2 x0)) (fp.div RNE (fp.fma RNE x3 x0 x0) (fp.div RNE x3 x1)) (fp.min (fp.div RNE x0 x1) (fp.abs x2)))))
(check-sat)