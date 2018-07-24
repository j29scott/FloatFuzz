;  time  = 573.6162486076355
;  terms = 34
;  score = 573.6162486076355
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
(assert (fp.gt (fp.div RNE (fp.div RNE (fp.div RNE x2 x0) (fp.rem x2 x1)) (fp.div RNE (fp.min (fp.rem x1 x2) (fp.abs x0)) (fp.fma RNE (fp.neg x0) (fp.div RNE x0 x2) (fp.mul RNE x2 x0)))) (fp.sqrt RNE (fp.add RNE (fp.fma RNE x0 x3 x3) (fp.rem x2 x0)))))
(check-sat)