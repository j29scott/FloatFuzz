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
(assert (fp.eq (fp.sub RNE (fp.rem (fp.sqrt RNE x2) (fp.sub RNE (fp.min x3 x2) (fp.rem x0 x3))) (fp.mul RNE (fp.min x1 x2) (fp.sub RNE x1 x3))) (fp.neg (fp.add RNE (fp.rem x1 x3) (fp.rem x1 (fp.max x2 x1))))))
(check-sat)