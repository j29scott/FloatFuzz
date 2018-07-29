;  time  = {'z3': 600, 'mathsat': 14.56083345413208}
;  terms = 67
;  score = 585.4391665458679
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
(assert (fp.isNormal (fp.min (fp.div RNE (fp.div RNE (fp.div RNE (fp.mul RNE x2 (fp.abs x3)) (fp.div RNE x0 x4)) (fp.div RNE (fp.abs x9) (fp.mul RNE x5 (fp.min x1 x0)))) (fp.div RNE (fp.div RNE (fp.mul RNE x0 x6) (fp.add RNE (fp.abs x9) (fp.mul RNE x5 x6))) (fp.min (fp.max (fp.abs x8) (fp.roundToIntegral RNE x2)) (fp.roundToIntegral RNE (fp.sqrt RNE x4))))) (fp.div RNE (fp.min (fp.max (fp.div RNE x7 x3) (fp.sub RNE (fp.div RNE x5 x1) (fp.div RNE x1 x7))) (fp.div RNE (fp.min x6 x1) (fp.div RNE x1 x7))) (fp.abs (fp.div RNE (fp.mul RNE x3 x6) (fp.sqrt RNE x0)))))))(check-sat)