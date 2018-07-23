;  time  = 600
;  terms = 9
;  score = 600
;  stdout= sat

(set-logic QF_FP)
(declare-const x0 (_ FloatingPoint 8 24))
(declare-const x1 (_ FloatingPoint 8 24))
(declare-const x2 (_ FloatingPoint 8 24))
(assert (not (fp.isNaN x0)))
(assert (not (fp.isInfinite x0)))
(assert (not (fp.isZero x0)))
(assert (not (fp.isNaN x1)))
(assert (not (fp.isInfinite x1)))
(assert (not (fp.isZero x1)))
(assert (not (fp.isNaN x2)))
(assert (not (fp.isInfinite x2)))
(assert (not (fp.isZero x2)))
(assert (fp.leq (fp.div RNE (fp.div RNE x0 x1) (fp.max (fp.div RNE x2 x1) (fp.div RNE x1 x1))) (fp.neg (fp.div RNE x0 x1))))
(check-sat)