;  time  = 593.6734051704407
;  terms = 38
;  score = 593.6734051704407
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
(assert (fp.eq (fp.div RNE (fp.add RNE (fp.div RNE x1 x3) (fp.div RNE x1 x2)) (fp.div RNE (fp.roundToIntegral RNE (fp.div RNE x1 x0)) (fp.rem (fp.abs x2) (fp.neg x1)))) (fp.div RNE (fp.min (fp.div RNE x1 x3) (fp.max x3 x0)) (fp.max (fp.div RNE (fp.div RNE x1 x2) (fp.neg x1)) (fp.neg (fp.div RNE x2 x3))))))
(check-sat)