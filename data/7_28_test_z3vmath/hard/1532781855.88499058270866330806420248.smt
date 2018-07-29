;  time  = {'z3': 600}
;  terms = 64
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
(assert (fp.eq (fp.sub RNE (fp.div RNE (fp.div RNE (fp.add RNE (fp.add RNE x5 x7) (fp.sqrt RNE x9)) (fp.add RNE (fp.div RNE x8 x3) (fp.mul RNE x0 x2))) (fp.neg (fp.div RNE (fp.neg x0) (fp.sqrt RNE x6)))) (fp.sqrt RNE (fp.abs (fp.sqrt RNE (fp.abs x7))))) (fp.sub RNE (fp.div RNE (fp.max (fp.abs (fp.mul RNE x1 x4)) (fp.max (fp.max x6 x5) (fp.sqrt RNE x5))) (fp.roundToIntegral RNE (fp.min (fp.div RNE x4 x6) (fp.sub RNE x2 x8)))) (fp.min (fp.sqrt RNE (fp.min (fp.neg x2) (fp.div RNE x9 x7))) (fp.roundToIntegral RNE (fp.add RNE (fp.div RNE x3 x3) (fp.sqrt RNE x4)))))))(check-sat)