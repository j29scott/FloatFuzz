;  time  = {'mathsat': 354.06770038604736, 'z3': 600}
;  terms = 120
;  score = 245.93229961395264
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
(assert (fp.eq (fp.mul RNE (fp.div RNE (fp.sub RNE (fp.min (fp.div RNE x9 x3) (fp.roundToIntegral RNE x8)) (fp.sub RNE (fp.neg (fp.sqrt RNE x6)) (fp.sub RNE (fp.sqrt RNE x4) (fp.mul RNE x2 x8)))) (fp.add RNE (fp.mul RNE (fp.mul RNE (fp.max x6 x7) (fp.add RNE x6 x3)) (fp.min (fp.sub RNE x3 x1) (fp.abs x7))) (fp.sub RNE (fp.div RNE (fp.abs x5) (fp.min x4 x1)) (fp.roundToIntegral RNE (fp.sub RNE x9 x4))))) (fp.add RNE (fp.sqrt RNE (fp.sqrt RNE (fp.sub RNE x1 x5))) (fp.min (fp.min (fp.add RNE (fp.sqrt RNE x9) (fp.max x9 x3)) (fp.min (fp.sub RNE x7 x5) (fp.neg x4))) (fp.max (fp.add RNE (fp.sub RNE x0 x2) (fp.mul RNE x5 x5)) (fp.abs (fp.div RNE x4 x0)))))) (fp.sub RNE (fp.sub RNE (fp.roundToIntegral RNE (fp.neg (fp.max x2 x5))) (fp.max (fp.div RNE (fp.div RNE x6 x9) (fp.add RNE x2 x0)) (fp.sub RNE (fp.div RNE x3 (fp.max x0 x2)) (fp.neg x9)))) (fp.div RNE (fp.roundToIntegral RNE (fp.neg (fp.sub RNE x3 x7))) (fp.sub RNE (fp.sub RNE (fp.sqrt RNE x8) (fp.add RNE x4 x8)) (fp.min (fp.add RNE x0 x3) (fp.roundToIntegral RNE x9)))))))(check-sat)