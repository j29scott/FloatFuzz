;  time  = {'mathsat': 16.713456392288208, 'z3': 566.103}
;  terms = 158
;  score = 549.3895436077117
;  stdout= {'mathsat': 'sat', 'z3': 'sat\n'}
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
(assert (fp.leq (fp.mul RNE (fp.div RNE (fp.mul RNE (fp.sub RNE (fp.mul RNE x4 x9) (fp.min x7 x0)) (fp.sqrt RNE (fp.sqrt RNE (fp.max x5 x5)))) (fp.div RNE (fp.add RNE (fp.sqrt RNE x1) (fp.add RNE x4 x8)) (fp.abs (fp.div RNE (fp.sub RNE x8 x7) (fp.div RNE x0 x5))))) (fp.mul RNE (fp.min (fp.mul RNE (fp.mul RNE x2 (fp.mul RNE x6 x0)) (fp.sub RNE x1 x1)) (fp.mul RNE (fp.div RNE x3 x6) (fp.sub RNE x3 x5))) (fp.min (fp.min (fp.max (fp.abs x6) (fp.mul RNE x3 x2)) (fp.min (fp.div RNE x6 x2) (fp.sub RNE x3 x1))) (fp.max (fp.div RNE (fp.max x4 x0) (fp.min x7 x2)) (fp.sub RNE (fp.min x9 x4) (fp.neg x5)))))) (fp.sub RNE (fp.sub RNE (fp.sub RNE (fp.sqrt RNE (fp.sub RNE x3 x0)) (fp.abs (fp.add RNE (fp.add RNE x7 x0) (fp.mul RNE x7 x9)))) (fp.div RNE (fp.roundToIntegral RNE (fp.min (fp.roundToIntegral RNE x4) (fp.mul RNE x9 x6))) (fp.min (fp.mul RNE (fp.abs x6) (fp.roundToIntegral RNE x0)) (fp.add RNE (fp.abs x3) (fp.min x0 x4))))) (fp.sub RNE (fp.add RNE (fp.max (fp.add RNE (fp.div RNE x3 x8) (fp.mul RNE x0 x7)) (fp.sqrt RNE (fp.sqrt RNE x5))) (fp.roundToIntegral RNE (fp.div RNE (fp.sqrt RNE x6) (fp.add RNE x3 x0)))) (fp.add RNE (fp.add RNE (fp.div RNE (fp.neg x8) (fp.sqrt RNE x2)) (fp.div RNE (fp.max x1 x5) (fp.roundToIntegral RNE x5))) (fp.add RNE (fp.add RNE (fp.sqrt RNE x9) (fp.neg x0)) (fp.div RNE (fp.add RNE x7 x9) (fp.roundToIntegral RNE x3))))))))(check-sat)