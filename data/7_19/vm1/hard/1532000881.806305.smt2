;  time  = 569.7681796550751
;  terms = 22
;  score = 0.9496136327584584
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
(assert (fp.isZero (fp.fma RNE (fp.rem (fp.mul RNE x2 x3) (fp.div RNE x0 x1)) (fp.fma RNE (fp.add RNE x1 x2) (fp.abs x3) (fp.abs x3)) (fp.neg (fp.fma RNE x0 x0 x0)))))
(check-sat)