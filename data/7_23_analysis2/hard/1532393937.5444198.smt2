;  time  = 598.2687935829163
;  terms = 31
;  score = 598.2687935829163
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
(assert (fp.geq (fp.rem (fp.rem (fp.sub RNE x3 x0) (fp.add RNE x2 x0)) (fp.fma RNE (fp.min x0 x3) (fp.rem x0 (fp.sqrt RNE x0)) (fp.min x3 x1))) (fp.roundToIntegral RNE (fp.rem (fp.abs x0) (fp.min (fp.add RNE x0 x1) (fp.rem x0 x1))))))
(check-sat)