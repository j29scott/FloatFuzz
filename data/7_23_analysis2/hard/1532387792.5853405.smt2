;  time  = 598.9546360969543
;  terms = 39
;  score = 598.9546360969543
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
(assert (fp.eq (fp.fma RNE (fp.div RNE (fp.abs x1) (fp.neg (fp.min x0 x3))) (fp.fma RNE (fp.rem x1 x3) (fp.mul RNE x0 x3) (fp.rem x0 x0)) (fp.rem (fp.rem x3 x3) (fp.neg x1))) (fp.div RNE (fp.sub RNE (fp.add RNE x2 x2) (fp.sub RNE x3 x1)) (fp.sub RNE (fp.sqrt RNE x2) (fp.add RNE x0 x1)))))
(check-sat)