;  time  = {'z3': 600}
;  terms = 68
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
(assert (fp.lt (fp.abs (fp.div RNE (fp.mul RNE (fp.abs (fp.add RNE x7 x5)) (fp.div RNE (fp.div RNE x4 x6) (fp.mul RNE (fp.abs x0) (fp.sub RNE x3 x9)))) (fp.abs (fp.div RNE (fp.div RNE x9 (fp.sub RNE x7 x9)) (fp.div RNE (fp.add RNE x9 x2) (fp.max x1 x5)))))) (fp.roundToIntegral RNE (fp.div RNE (fp.div RNE (fp.abs (fp.abs x9)) (fp.min (fp.abs (fp.abs x4)) (fp.add RNE (fp.div RNE x8 x3) (fp.abs x8)))) (fp.add RNE (fp.div RNE (fp.abs (fp.div RNE x2 x3)) (fp.sqrt RNE (fp.roundToIntegral RNE x5))) (fp.div RNE (fp.abs (fp.min x2 x6)) (fp.min (fp.neg x7) (fp.add RNE x5 x2))))))))(check-sat)