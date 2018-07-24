;  time  = 571.7703106403351
;  terms = 28
;  score = 571.7703106403351
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
(assert (fp.eq (fp.rem (fp.roundToIntegral RNE (fp.mul RNE x0 x3)) (fp.sqrt RNE (fp.add RNE x3 x2))) (fp.fma RNE (fp.sqrt RNE (fp.fma RNE x3 x0 x1)) (fp.neg (fp.sqrt RNE x1)) (fp.abs (fp.sub RNE (fp.rem x3 x1) (fp.fma RNE x0 x3 x1))))))
(check-sat)