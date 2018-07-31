;  time  = {'mathsat': 8.32269811630249, 'z3': 600}
;  terms = 101
;  score = 591.6773018836975
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
(assert (fp.lt (fp.div RNE (fp.sub RNE (fp.mul RNE (fp.min (fp.mul RNE x6 x9) (fp.mul RNE x3 x0)) (fp.mul RNE (fp.mul RNE x8 x2) (fp.min x5 x6))) (fp.roundToIntegral RNE (fp.mul RNE (fp.neg x6) (fp.add RNE (fp.mul RNE x1 x9) (fp.div RNE x6 x8))))) (fp.max (fp.add RNE (fp.mul RNE (fp.div RNE x2 (fp.max x4 x8)) (fp.sqrt RNE x4)) (fp.sqrt RNE (fp.roundToIntegral RNE x4))) (fp.sub RNE (fp.neg (fp.div RNE x8 (fp.div RNE x2 x0))) (fp.neg (fp.mul RNE x5 x9))))) (fp.mul RNE (fp.roundToIntegral RNE (fp.div RNE (fp.sqrt RNE (fp.div RNE x2 x4)) (fp.div RNE (fp.neg (fp.roundToIntegral RNE x2)) (fp.neg (fp.max x6 x5))))) (fp.div RNE (fp.mul RNE (fp.add RNE (fp.div RNE x2 x7) (fp.neg x2)) (fp.mul RNE (fp.sqrt RNE (fp.div RNE x0 x3)) (fp.add RNE (fp.div RNE x0 x1) (fp.div RNE x8 x8)))) (fp.mul RNE (fp.roundToIntegral RNE (fp.div RNE x4 x2)) (fp.sqrt RNE (fp.sub RNE (fp.div RNE x7 x1) (fp.add RNE x2 x2))))))))(check-sat)