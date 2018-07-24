;  time  = 600
;  terms = 32
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
(assert (fp.gt (fp.sub RNE (fp.mul RNE (fp.max x1 x0) (fp.rem x3 x2)) (fp.rem (fp.rem x1 (fp.sqrt RNE x1)) (fp.rem (fp.rem x3 x3) (fp.div RNE x2 x3)))) (fp.sqrt RNE (fp.rem (fp.min x2 x1) (fp.sub RNE (fp.abs x0) (fp.min x2 x3))))))
(check-sat)