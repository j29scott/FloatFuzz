;  time  = {'z3': 600}
;  terms = 78
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
(assert (fp.isZero (fp.div RNE (fp.max (fp.div RNE (fp.add RNE (fp.min x4 x3) (fp.div RNE x8 x5)) (fp.div RNE (fp.roundToIntegral RNE x1) (fp.sub RNE (fp.abs x7) (fp.max x5 x5)))) (fp.div RNE (fp.div RNE (fp.div RNE x6 (fp.div RNE x5 x2)) (fp.div RNE x0 x8)) (fp.sqrt RNE (fp.div RNE x9 (fp.min x7 x0))))) (fp.div RNE (fp.min (fp.div RNE (fp.sub RNE (fp.abs x6) (fp.sqrt RNE x8)) (fp.abs (fp.div RNE x5 x7))) (fp.max (fp.neg (fp.max x7 x3)) (fp.sub RNE (fp.roundToIntegral RNE x5) (fp.mul RNE x9 x7)))) (fp.div RNE (fp.max (fp.add RNE (fp.div RNE x1 x3) (fp.roundToIntegral RNE x1)) (fp.neg (fp.add RNE x6 x2))) (fp.neg (fp.max (fp.div RNE x7 x6) (fp.neg x6))))))))(check-sat)