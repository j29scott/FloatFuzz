;  time  = 600
;  terms = 29
;  score = 1.0
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
(assert (fp.lt (fp.max (fp.rem (fp.div RNE x2 x2) (fp.rem x3 x2)) (fp.div RNE (fp.sqrt RNE x2) (fp.div RNE x1 x2))) (fp.rem (fp.sub RNE (fp.sub RNE x0 x1) (fp.add RNE x1 x2)) (fp.rem (fp.div RNE x3 x0) (fp.sqrt RNE x0)))))
(check-sat)