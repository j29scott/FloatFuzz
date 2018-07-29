;  time  = {'z3': 600}
;  terms = 75
;  score = 600
;  stdout= {'z3': 'timeout\n'}
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
(assert (fp.gt (fp.abs (fp.mul RNE (fp.max (fp.abs (fp.abs x5)) (fp.roundToIntegral RNE (fp.div RNE x6 x7))) (fp.div RNE (fp.abs (fp.abs x9)) (fp.min (fp.add RNE x6 x6) (fp.div RNE x7 (fp.sqrt RNE x1)))))) (fp.div RNE (fp.sqrt RNE (fp.max (fp.div RNE (fp.div RNE x6 x7) (fp.max (fp.mul RNE x5 x1) (fp.mul RNE x7 x5))) (fp.max (fp.max x1 x5) (fp.roundToIntegral RNE x1)))) (fp.div RNE (fp.abs (fp.mul RNE (fp.neg (fp.div RNE x6 x8)) (fp.min (fp.abs x6) (fp.abs x9)))) (fp.sub RNE (fp.div RNE (fp.roundToIntegral RNE (fp.div RNE x3 x0)) (fp.div RNE (fp.min x1 x3) (fp.roundToIntegral RNE x6))) (fp.abs (fp.mul RNE (fp.add RNE x8 x6) (fp.mul RNE x2 x4))))))))(check-sat)