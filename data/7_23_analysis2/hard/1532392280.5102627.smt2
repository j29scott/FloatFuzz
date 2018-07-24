;  time  = 600
;  terms = 38
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
(assert (fp.eq (fp.min (fp.rem (fp.max x2 x0) (fp.min x1 x2)) (fp.div RNE (fp.sub RNE x0 x2) (fp.min x2 x3))) (fp.fma RNE (fp.rem (fp.neg x1) (fp.sub RNE x2 x3)) (fp.mul RNE (fp.sub RNE x2 x3) (fp.max x3 (fp.div RNE x0 x3))) (fp.add RNE (fp.sub RNE x1 x2) (fp.abs x2)))))
(check-sat)