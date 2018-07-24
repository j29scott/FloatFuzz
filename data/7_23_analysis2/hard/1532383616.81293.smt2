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
(assert (fp.leq (fp.div RNE (fp.abs (fp.rem x0 x0)) (fp.div RNE (fp.mul RNE (fp.sub RNE x1 x3) (fp.max x0 x0)) (fp.mul RNE (fp.abs x3) (fp.div RNE x2 x0)))) (fp.div RNE (fp.div RNE (fp.rem x1 x0) (fp.neg (fp.div RNE x1 x3))) (fp.rem (fp.neg (fp.sqrt RNE x3)) (fp.fma RNE (fp.add RNE x2 x3) (fp.div RNE x0 x3) (fp.neg x3))))))
(check-sat)