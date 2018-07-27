;  time  = {'mathsat': 7.695627927780151, 'z3': 600}
;  terms = 115
;  score = 592.3043720722198
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
(assert (fp.gt (fp.div RNE (fp.div RNE (fp.roundToIntegral RNE (fp.div RNE (fp.div RNE x9 x7) (fp.abs (fp.mul RNE x4 x0)))) (fp.sub RNE (fp.div RNE (fp.sub RNE x6 x6) (fp.add RNE x5 x1)) (fp.add RNE (fp.mul RNE x4 x6) (fp.max x2 x5)))) (fp.sub RNE (fp.div RNE (fp.sub RNE (fp.neg x8) (fp.div RNE (fp.roundToIntegral RNE x2) (fp.div RNE x8 x3))) (fp.div RNE (fp.sqrt RNE x3) (fp.div RNE x7 x5))) (fp.div RNE (fp.mul RNE (fp.sub RNE x2 (fp.max x4 x1)) (fp.div RNE x3 x2)) (fp.add RNE (fp.neg x8) (fp.div RNE x6 x1))))) (fp.min (fp.div RNE (fp.roundToIntegral RNE (fp.mul RNE (fp.abs x3) (fp.sqrt RNE x6))) (fp.max (fp.max (fp.neg (fp.max x0 x3)) (fp.sqrt RNE (fp.sqrt RNE x1))) (fp.add RNE (fp.div RNE (fp.sqrt RNE x1) (fp.mul RNE x8 x0)) (fp.mul RNE (fp.roundToIntegral RNE x1) (fp.sub RNE x7 x2))))) (fp.div RNE (fp.sub RNE (fp.sub RNE (fp.roundToIntegral RNE x5) (fp.div RNE x6 x4)) (fp.sub RNE (fp.min x3 x6) (fp.div RNE (fp.div RNE x8 x3) (fp.neg x0)))) (fp.roundToIntegral RNE (fp.div RNE (fp.div RNE x4 x8) (fp.abs x4)))))))(check-sat)