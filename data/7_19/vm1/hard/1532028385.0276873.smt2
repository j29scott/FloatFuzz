;  time  = 572.2888705730438
;  terms = 20
;  score = 0.9538147842884064
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
(assert (fp.geq (fp.sqrt RNE (fp.rem (fp.rem x2 x0) (fp.add RNE x1 x1))) (fp.div RNE (fp.neg (fp.roundToIntegral RNE x0)) (fp.sub RNE (fp.rem x3 x1) (fp.mul RNE x3 x0)))))
(check-sat)