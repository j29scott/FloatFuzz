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
(assert (fp.isNaN (fp.fma RNE (fp.fma RNE (fp.mul RNE x1 x1) (fp.rem x3 x2) (fp.max x0 x3)) (fp.add RNE (fp.div RNE x3 x0) (fp.min x3 x3)) (fp.fma RNE (fp.rem x0 x2) (fp.sub RNE x1 x2) (fp.sub RNE x2 x3)))))
(check-sat)