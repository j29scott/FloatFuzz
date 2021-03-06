;  time  = {'mathsat': 6.39237117767334, 'z3': 600}
;  terms = 127
;  score = 593.6076288223267
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
(assert (fp.leq (fp.div RNE (fp.div RNE (fp.mul RNE (fp.sub RNE (fp.mul RNE x4 x9) (fp.min x7 x0)) (fp.sqrt RNE (fp.sqrt RNE (fp.max x5 x5)))) (fp.div RNE (fp.min (fp.sqrt RNE x1) (fp.add RNE x4 x8)) (fp.abs (fp.div RNE (fp.sub RNE x8 x7) (fp.div RNE x0 x5))))) (fp.abs (fp.min (fp.sub RNE (fp.sqrt RNE x2) (fp.sub RNE x1 x1)) (fp.sub RNE (fp.div RNE x3 x6) (fp.sub RNE x3 x5))))) (fp.sub RNE (fp.sub RNE (fp.sub RNE (fp.sqrt RNE (fp.sub RNE x3 x0)) (fp.abs (fp.add RNE (fp.add RNE x7 x0) (fp.mul RNE x7 x9)))) (fp.div RNE (fp.roundToIntegral RNE (fp.min (fp.roundToIntegral RNE x4) (fp.mul RNE x9 x6))) (fp.min (fp.add RNE (fp.abs x6) (fp.min x0 x9)) (fp.add RNE (fp.abs x3) (fp.min x0 x4))))) (fp.sub RNE (fp.add RNE (fp.min (fp.add RNE (fp.div RNE x3 x8) (fp.div RNE x0 x7)) (fp.sqrt RNE (fp.sqrt RNE x5))) (fp.roundToIntegral RNE (fp.div RNE (fp.sqrt RNE x6) (fp.add RNE x3 x0)))) (fp.add RNE (fp.add RNE (fp.div RNE (fp.neg x8) (fp.sqrt RNE x2)) (fp.div RNE (fp.max x1 x5) (fp.roundToIntegral RNE x5))) (fp.add RNE (fp.add RNE (fp.sqrt RNE x9) (fp.neg x0)) (fp.div RNE (fp.add RNE x7 x9) (fp.roundToIntegral RNE x3))))))))(check-sat)