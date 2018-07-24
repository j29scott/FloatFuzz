;  time  = 600
;  terms = 34
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
(assert (fp.geq (fp.div RNE (fp.rem (fp.div RNE x3 x3) (fp.mul RNE x1 x3)) (fp.sqrt RNE (fp.div RNE x1 (fp.sub RNE x1 x2)))) (fp.max (fp.div RNE (fp.div RNE x3 (fp.fma RNE x2 x2 x1)) (fp.div RNE x0 x3)) (fp.div RNE (fp.div RNE x2 (fp.abs x2)) (fp.add RNE x2 x1)))))
(check-sat)