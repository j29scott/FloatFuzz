;  time  = {'z3': 600}
;  terms = 77
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
(assert (fp.lt (fp.max (fp.sqrt RNE (fp.div RNE (fp.neg (fp.mul RNE x4 x6)) (fp.sub RNE (fp.abs x5) (fp.sqrt RNE x0)))) (fp.min (fp.max (fp.div RNE (fp.abs x4) (fp.neg x7)) (fp.div RNE (fp.add RNE x5 x3) (fp.sqrt RNE x5))) (fp.mul RNE (fp.div RNE (fp.abs x1) (fp.sub RNE x5 x2)) (fp.div RNE (fp.sqrt RNE x3) (fp.mul RNE x0 x4))))) (fp.mul RNE (fp.div RNE (fp.max (fp.sqrt RNE (fp.min x8 x0)) (fp.min (fp.max x9 x0) (fp.min x3 x1))) (fp.add RNE (fp.div RNE (fp.mul RNE x5 x3) (fp.div RNE x2 x2)) (fp.sub RNE (fp.mul RNE x3 x7) (fp.div RNE x9 x4)))) (fp.roundToIntegral RNE (fp.sqrt RNE (fp.sub RNE (fp.max x3 x3) (fp.add RNE x2 x1)))))))(check-sat)