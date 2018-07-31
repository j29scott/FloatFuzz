;  time  = {'z3': 600, 'mathsat': 4.755914211273193}
;  terms = 78
;  score = 595.2440857887268
;  stdout= {'z3': 'timeout\n', 'mathsat': 'sat'}
(set-logic QF_FP)
(declare-const x0 (_ FloatingPoint 8 24))
(declare-const x1 (_ FloatingPoint 8 24))
(declare-const x2 (_ FloatingPoint 8 24))
(declare-const x3 (_ FloatingPoint 8 24))
(declare-const x4 (_ FloatingPoint 8 24))
(declare-const x5 (_ FloatingPoint 8 24))
(declare-const x6 (_ FloatingPoint 8 24))
(declare-const x7 (_ FloatingPoint 8 24))
(declare-const x8 (_ FloatingPoint 8 24))
(declare-const x9 (_ FloatingPoint 8 24))
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
(assert (not (fp.isNaN x4)))
(assert (not (fp.isInfinite x4)))
(assert (not (fp.isZero x4)))
(assert (not (fp.isNaN x5)))
(assert (not (fp.isInfinite x5)))
(assert (not (fp.isZero x5)))
(assert (not (fp.isNaN x6)))
(assert (not (fp.isInfinite x6)))
(assert (not (fp.isZero x6)))
(assert (not (fp.isNaN x7)))
(assert (not (fp.isInfinite x7)))
(assert (not (fp.isZero x7)))
(assert (not (fp.isNaN x8)))
(assert (not (fp.isInfinite x8)))
(assert (not (fp.isZero x8)))
(assert (not (fp.isNaN x9)))
(assert (not (fp.isInfinite x9)))
(assert (not (fp.isZero x9)))
(assert (fp.geq (fp.sqrt RNE (fp.mul RNE (fp.max (fp.add RNE (fp.div RNE x6 x1) (fp.min x9 x7)) (fp.sub RNE (fp.max x5 x0) (fp.abs x7))) (fp.neg (fp.sqrt RNE (fp.mul RNE x5 x6))))) (fp.add RNE (fp.div RNE (fp.min (fp.div RNE (fp.abs x9) (fp.min x3 x8)) (fp.abs (fp.sub RNE x9 x0))) (fp.abs (fp.abs (fp.div RNE x3 x8)))) (fp.min (fp.sqrt RNE (fp.add RNE (fp.div RNE (fp.roundToIntegral RNE x8) (fp.mul RNE x9 x7)) (fp.max (fp.abs x7) (fp.add RNE x6 x8)))) (fp.div RNE (fp.div RNE (fp.sqrt RNE (fp.add RNE x7 x9)) (fp.sub RNE (fp.roundToIntegral RNE x1) (fp.max x2 x9))) (fp.div RNE (fp.neg (fp.mul RNE x6 x7)) (fp.div RNE (fp.neg x6) (fp.div RNE x6 x4))))))))(check-sat)