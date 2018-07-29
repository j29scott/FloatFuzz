;  time  = {'z3': 600}
;  terms = 76
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
(assert (fp.eq (fp.mul RNE (fp.div RNE (fp.roundToIntegral RNE (fp.neg (fp.min x1 x3))) (fp.roundToIntegral RNE (fp.abs (fp.div RNE x7 x2)))) (fp.div RNE (fp.add RNE (fp.abs (fp.abs x1)) (fp.add RNE (fp.div RNE x7 x2) (fp.abs x3))) (fp.div RNE (fp.neg (fp.div RNE x8 (fp.sqrt RNE x3))) (fp.roundToIntegral RNE (fp.mul RNE x2 x0))))) (fp.div RNE (fp.div RNE (fp.add RNE (fp.add RNE (fp.abs x3) (fp.sub RNE x4 x9)) (fp.roundToIntegral RNE (fp.neg x5))) (fp.sub RNE (fp.sqrt RNE (fp.roundToIntegral RNE x9)) (fp.add RNE (fp.neg x8) (fp.sqrt RNE x0)))) (fp.div RNE (fp.abs (fp.min (fp.sqrt RNE x3) (fp.sub RNE x5 x3))) (fp.div RNE (fp.add RNE (fp.abs x7) (fp.div RNE x4 x7)) (fp.mul RNE (fp.abs x4) (fp.max x9 x8)))))))(check-sat)