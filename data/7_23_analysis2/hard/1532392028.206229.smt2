;  time  = 551.6795573234558
;  terms = 27
;  score = 551.6795573234558
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
(assert (fp.leq (fp.roundToIntegral RNE (fp.roundToIntegral RNE (fp.roundToIntegral RNE x2))) (fp.rem (fp.add RNE (fp.rem x3 x1) (fp.roundToIntegral RNE x1)) (fp.div RNE (fp.fma RNE (fp.max x0 x2) (fp.sqrt RNE x2) (fp.abs x0)) (fp.min (fp.roundToIntegral RNE x0) (fp.min x1 x3))))))
(check-sat)