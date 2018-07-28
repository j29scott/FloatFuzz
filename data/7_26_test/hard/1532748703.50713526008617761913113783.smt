;  time  = {'mathsat': 160.84477829933167, 'z3': 600}
;  terms = 82
;  score = 439.15522170066833
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
(assert (fp.eq (fp.max (fp.abs (fp.mul RNE (fp.roundToIntegral RNE (fp.min x9 x6)) (fp.add RNE (fp.div RNE x4 x3) (fp.div RNE x4 x7)))) (fp.neg (fp.sqrt RNE (fp.roundToIntegral RNE (fp.div RNE x0 (fp.div RNE x2 x9)))))) (fp.div RNE (fp.max (fp.div RNE (fp.div RNE (fp.div RNE x0 x2) (fp.div RNE x4 x0)) (fp.min (fp.div RNE x1 x5) (fp.roundToIntegral RNE x7))) (fp.sub RNE (fp.div RNE (fp.div RNE x4 x8) (fp.min x9 x1)) (fp.neg (fp.sqrt RNE x0)))) (fp.mul RNE (fp.add RNE (fp.sqrt RNE (fp.mul RNE x0 x2)) (fp.neg (fp.max x7 x5))) (fp.div RNE (fp.min (fp.sqrt RNE x8) (fp.div RNE x0 x8)) (fp.sub RNE (fp.add RNE (fp.add RNE x1 x0) (fp.div RNE x5 x3)) (fp.add RNE (fp.div RNE x4 x7) (fp.mul RNE x0 x5))))))))(check-sat)