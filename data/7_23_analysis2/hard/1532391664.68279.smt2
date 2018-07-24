;  time  = 600
;  terms = 42
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
(assert (fp.gt (fp.rem (fp.sqrt RNE (fp.rem x2 (fp.max x0 x3))) (fp.fma RNE (fp.rem (fp.rem x0 x2) (fp.max x3 x1)) (fp.roundToIntegral RNE (fp.max x3 x1)) (fp.rem (fp.rem x0 x3) (fp.div RNE x0 x0)))) (fp.rem (fp.min (fp.fma RNE x2 x1 x3) (fp.neg x1)) (fp.sub RNE (fp.rem x2 x0) (fp.sub RNE x0 x0)))))
(check-sat)