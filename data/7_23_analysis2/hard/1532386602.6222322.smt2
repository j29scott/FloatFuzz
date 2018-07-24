;  time  = 596.9774296283722
;  terms = 34
;  score = 596.9774296283722
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
(assert (fp.eq (fp.sub RNE (fp.fma RNE (fp.div RNE x3 x2) (fp.neg x2) (fp.div RNE x1 x2)) (fp.fma RNE (fp.sqrt RNE x3) (fp.div RNE x0 x1) (fp.abs x1))) (fp.max (fp.div RNE (fp.mul RNE x2 x1) (fp.sqrt RNE (fp.min x2 x1))) (fp.rem (fp.min x0 x1) (fp.sqrt RNE x0)))))
(check-sat)