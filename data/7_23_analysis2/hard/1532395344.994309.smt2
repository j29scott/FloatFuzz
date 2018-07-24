;  time  = 600
;  terms = 40
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
(assert (fp.lt (fp.sub RNE (fp.rem (fp.add RNE x3 x2) (fp.abs x0)) (fp.div RNE (fp.rem x2 (fp.rem x2 x1)) (fp.rem x3 x0))) (fp.rem (fp.rem (fp.rem x2 x0) (fp.sub RNE (fp.add RNE x3 x1) (fp.rem x3 x0))) (fp.add RNE (fp.rem x2 (fp.max x1 x1)) (fp.rem x0 (fp.rem x2 x3))))))
(check-sat)