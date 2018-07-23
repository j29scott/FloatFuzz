;  time  = 568.8970165252686
;  terms = 14
;  score = 568.8970165252686
;  stdout= 
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
(assert (fp.geq (fp.add RNE (fp.div RNE x0 x0) (fp.min x1 x0)) (fp.rem (fp.min x2 x1) (fp.sqrt RNE x0))))
(check-sat)