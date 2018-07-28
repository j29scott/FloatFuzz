;  time  = {'mathsat': 89.47881054878235, 'z3': 600}
;  terms = 58
;  score = 510.52118945121765
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
(assert (fp.isZero (fp.div RNE (fp.max (fp.mul RNE (fp.div RNE (fp.div RNE x4 (fp.roundToIntegral RNE x5)) (fp.div RNE x6 (fp.div RNE x6 x0))) (fp.sqrt RNE (fp.roundToIntegral RNE x3))) (fp.div RNE (fp.div RNE (fp.div RNE x4 (fp.div RNE x8 x8)) (fp.add RNE x7 x0)) (fp.min (fp.div RNE x1 (fp.add RNE x2 x2)) (fp.mul RNE x5 x0)))) (fp.roundToIntegral RNE (fp.div RNE (fp.neg (fp.div RNE (fp.div RNE x9 x3) (fp.div RNE x2 x1))) (fp.mul RNE (fp.neg (fp.min x5 x7)) (fp.div RNE (fp.div RNE x7 x2) (fp.div RNE x8 x9))))))))(check-sat)