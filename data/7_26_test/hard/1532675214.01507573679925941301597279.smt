;  time  = {'mathsat': 137.34027552604675, 'z3': 600}
;  terms = 126
;  score = 462.65972447395325
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
(assert (fp.eq (fp.max (fp.mul RNE (fp.neg (fp.div RNE (fp.neg x7) (fp.mul RNE (fp.min x1 x3) (fp.div RNE x9 x5)))) (fp.div RNE (fp.sub RNE (fp.min x2 x2) (fp.div RNE x7 x3)) (fp.sqrt RNE (fp.sub RNE x0 x7)))) (fp.div RNE (fp.div RNE (fp.sub RNE (fp.div RNE x2 (fp.abs x2)) (fp.min (fp.roundToIntegral RNE x2) (fp.mul RNE x0 x4))) (fp.mul RNE (fp.roundToIntegral RNE x7) (fp.roundToIntegral RNE x3))) (fp.add RNE (fp.sub RNE (fp.sqrt RNE (fp.mul RNE x8 x1)) (fp.sqrt RNE (fp.neg x3))) (fp.min (fp.add RNE (fp.mul RNE x3 x7) (fp.sub RNE x4 x7)) (fp.div RNE (fp.div RNE x7 x6) (fp.roundToIntegral RNE x6)))))) (fp.sub RNE (fp.sub RNE (fp.roundToIntegral RNE (fp.min (fp.abs x6) (fp.sqrt RNE x8))) (fp.div RNE (fp.abs (fp.max x6 x6)) (fp.max (fp.mul RNE (fp.add RNE x3 x9) (fp.sub RNE x0 x6)) (fp.div RNE (fp.add RNE x6 x8) (fp.add RNE x5 x8))))) (fp.sub RNE (fp.abs (fp.sub RNE (fp.max (fp.mul RNE x5 x0) (fp.neg x3)) (fp.add RNE (fp.div RNE x4 x2) (fp.mul RNE x9 x1)))) (fp.mul RNE (fp.neg (fp.min (fp.mul RNE x7 x1) (fp.max x6 x5))) (fp.roundToIntegral RNE (fp.max (fp.neg x9) (fp.abs x2))))))))(check-sat)