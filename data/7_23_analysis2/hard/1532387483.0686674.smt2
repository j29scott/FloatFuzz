;  time  = 548.9504110813141
;  terms = 54
;  score = 548.9504110813141
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
(assert (fp.eq (fp.div RNE (fp.min (fp.div RNE x0 x2) (fp.div RNE x3 (fp.div RNE x1 x1))) (fp.div RNE (fp.fma RNE (fp.roundToIntegral RNE x2) (fp.roundToIntegral RNE x3) (fp.sqrt RNE x3)) (fp.abs (fp.div RNE x2 x1)))) (fp.div RNE (fp.div RNE (fp.sub RNE x3 x0) (fp.fma RNE (fp.max x1 x3) (fp.mul RNE x1 x1) (fp.abs x0))) (fp.fma RNE (fp.rem (fp.rem x3 x2) (fp.abs x2)) (fp.div RNE (fp.min x1 x2) (fp.max x3 x1)) (fp.neg (fp.sqrt RNE x1))))))
(check-sat)