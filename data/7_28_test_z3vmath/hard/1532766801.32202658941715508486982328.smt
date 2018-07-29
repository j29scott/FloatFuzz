;  time  = {'z3': 600}
;  terms = 74
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
(assert (fp.gt (fp.div RNE (fp.roundToIntegral RNE (fp.div RNE (fp.div RNE (fp.mul RNE x1 x3) (fp.sqrt RNE x9)) (fp.neg (fp.div RNE x4 x8)))) (fp.div RNE (fp.div RNE (fp.abs (fp.sqrt RNE x4)) (fp.abs (fp.abs x5))) (fp.sqrt RNE (fp.max (fp.div RNE (fp.neg x0) (fp.sqrt RNE x1)) (fp.div RNE (fp.abs x4) (fp.add RNE x9 x9)))))) (fp.div RNE (fp.sub RNE (fp.roundToIntegral RNE (fp.sub RNE (fp.div RNE x7 x0) (fp.div RNE x9 x9))) (fp.div RNE (fp.div RNE (fp.div RNE x0 x1) (fp.div RNE (fp.abs x6) (fp.div RNE x7 x7))) (fp.div RNE (fp.abs x8) (fp.sqrt RNE x2)))) (fp.abs (fp.div RNE (fp.min (fp.add RNE x5 x6) (fp.add RNE x8 x6)) (fp.abs (fp.sub RNE x5 x9)))))))(check-sat)