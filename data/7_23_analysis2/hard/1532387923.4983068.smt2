;  time  = 600
;  terms = 32
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
(assert (fp.eq (fp.add RNE (fp.div RNE (fp.neg x0) (fp.fma RNE x1 x3 x1)) (fp.rem (fp.mul RNE x0 x2) (fp.sub RNE x1 x3))) (fp.fma RNE (fp.min (fp.sqrt RNE x0) (fp.roundToIntegral RNE x0)) (fp.neg (fp.rem x1 x1)) (fp.mul RNE (fp.div RNE x2 x3) (fp.neg x1)))))
(check-sat)