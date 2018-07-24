;  time  = {}
;  terms = 26
;  score = -1
;  stdout= {}
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
(assert (fp.eq (fp.div RNE (fp.max (fp.max x3 (fp.sqrt RNE x0)) (fp.max x3 x0)) (fp.roundToIntegral RNE (fp.add RNE x2 x1))) (fp.max (fp.max (fp.sqrt RNE x2) (fp.add RNE x0 x2)) (fp.sqrt RNE (fp.roundToIntegral RNE (fp.max x3 x0))))))(check-sat)