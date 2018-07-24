;  time  = {}
;  terms = 35
;  score = -1
;  stdout= {}
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
(assert (fp.gt (fp.max (fp.max (fp.max x0 x1) (fp.sub RNE x0 x3)) (fp.sqrt RNE (fp.max x2 x2))) (fp.max (fp.min (fp.max x1 x0) (fp.mul RNE x1 x2)) (fp.max (fp.sub RNE (fp.abs x3) (fp.min x2 x2)) (fp.mul RNE (fp.max x0 x2) (fp.max x2 x0))))))(check-sat)