;  time  = {'mathsat': 72.95518136024475, 'z3': 600}
;  terms = 78
;  score = 527.0448186397552
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
(assert (fp.isZero (fp.mul RNE (fp.add RNE (fp.min (fp.sub RNE (fp.min x4 x5) (fp.div RNE x5 (fp.min x1 x6))) (fp.div RNE (fp.add RNE x8 x4) (fp.mul RNE x3 (fp.min x6 x4)))) (fp.div RNE (fp.min (fp.sqrt RNE x8) (fp.mul RNE (fp.mul RNE x0 x5) (fp.sub RNE x2 x6))) (fp.neg (fp.div RNE (fp.div RNE x7 x3) (fp.mul RNE x3 x2))))) (fp.div RNE (fp.max (fp.min (fp.div RNE x2 x4) (fp.abs x3)) (fp.mul RNE (fp.div RNE x6 x3) (fp.div RNE x2 (fp.sub RNE x7 x7)))) (fp.max (fp.div RNE (fp.mul RNE x4 x9) (fp.div RNE x9 (fp.sub RNE x7 x0))) (fp.mul RNE (fp.mul RNE x7 (fp.roundToIntegral RNE x4)) (fp.min x0 (fp.sub RNE x9 x9))))))))(check-sat)