;  time  = 600
;  terms = 37
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
(assert (fp.geq (fp.sub RNE (fp.rem (fp.mul RNE x2 x1) (fp.rem x0 (fp.min x1 x1))) (fp.rem (fp.neg x0) (fp.add RNE (fp.rem x1 x3) (fp.rem x2 x2)))) (fp.div RNE (fp.fma RNE (fp.max x1 x0) (fp.sub RNE x2 x0) (fp.sub RNE x0 x1)) (fp.add RNE (fp.sqrt RNE x0) (fp.sqrt RNE x0)))))
(check-sat)