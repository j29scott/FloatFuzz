;  time  = 592.6518955230713
;  terms = 35
;  score = 0.9877531592051189
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
(assert (fp.leq (fp.sub RNE (fp.fma RNE (fp.add RNE x2 x0) (fp.sqrt RNE x3) (fp.neg x1)) (fp.abs (fp.rem x3 x3))) (fp.fma RNE (fp.rem (fp.max x0 x2) (fp.min x0 x2)) (fp.mul RNE (fp.sub RNE x0 x0) (fp.div RNE x3 x2)) (fp.rem (fp.rem x1 x2) (fp.neg x3)))))
(check-sat)