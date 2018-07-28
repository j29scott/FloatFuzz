;  time  = {'mathsat': 9.984702825546265, 'z3': 600}
;  terms = 72
;  score = 590.0152971744537
;  stdout= {'mathsat': 'sat', 'z3': 'timeout\n'}
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
(assert (fp.isPositive (fp.div RNE (fp.sqrt RNE (fp.div RNE (fp.sqrt RNE (fp.div RNE x0 (fp.mul RNE x0 x0))) (fp.div RNE (fp.div RNE (fp.div RNE x4 x8) (fp.mul RNE x2 x2)) (fp.div RNE (fp.add RNE x3 x7) (fp.roundToIntegral RNE x9))))) (fp.div RNE (fp.min (fp.min (fp.max (fp.div RNE x7 x1) (fp.div RNE x5 x7)) (fp.max (fp.div RNE x6 x4) (fp.abs x7))) (fp.roundToIntegral RNE (fp.min (fp.div RNE x7 x7) (fp.min x3 x8)))) (fp.max (fp.min (fp.div RNE (fp.mul RNE x2 x7) (fp.div RNE x7 x1)) (fp.div RNE (fp.mul RNE x1 x7) (fp.min x9 x1))) (fp.roundToIntegral RNE (fp.max (fp.div RNE x3 x1) (fp.min x1 x0))))))))(check-sat)