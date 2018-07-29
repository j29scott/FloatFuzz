;  time  = {'z3': 600}
;  terms = 85
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
(assert (fp.lt (fp.add RNE (fp.min (fp.sqrt RNE (fp.div RNE (fp.max x6 x6) (fp.sqrt RNE x5))) (fp.div RNE (fp.div RNE (fp.div RNE x2 x3) (fp.min x8 x8)) (fp.min (fp.roundToIntegral RNE (fp.mul RNE x2 x3)) (fp.div RNE (fp.sqrt RNE x8) (fp.roundToIntegral RNE x7))))) (fp.abs (fp.sub RNE (fp.div RNE (fp.sqrt RNE x7) (fp.div RNE x2 x0)) (fp.max (fp.div RNE x2 x6) (fp.div RNE x7 x5))))) (fp.add RNE (fp.div RNE (fp.div RNE (fp.div RNE (fp.sqrt RNE x7) (fp.sub RNE x9 x8)) (fp.div RNE (fp.div RNE x4 x2) (fp.sub RNE x6 x4))) (fp.max (fp.abs (fp.div RNE x3 (fp.abs x2))) (fp.div RNE (fp.min x6 x6) (fp.sqrt RNE x4)))) (fp.min (fp.roundToIntegral RNE (fp.div RNE (fp.roundToIntegral RNE x9) (fp.neg x7))) (fp.neg (fp.max (fp.add RNE x0 x0) (fp.roundToIntegral RNE x9)))))))(check-sat)