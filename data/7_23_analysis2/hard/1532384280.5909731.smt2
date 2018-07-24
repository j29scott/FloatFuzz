;  time  = 600
;  terms = 40
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
(assert (fp.leq (fp.div RNE (fp.abs (fp.div RNE x0 (fp.max x1 x2))) (fp.div RNE (fp.div RNE x2 x1) (fp.div RNE (fp.div RNE x0 x2) (fp.div RNE x1 x0)))) (fp.min (fp.div RNE (fp.sqrt RNE x3) (fp.min x0 x0)) (fp.div RNE (fp.min x1 x1) (fp.fma RNE (fp.rem x0 x3) (fp.div RNE x2 x2) (fp.div RNE x1 x0))))))
(check-sat)