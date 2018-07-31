;  time  = {'z3': 600}
;  terms = 65
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
(assert (fp.eq (fp.add RNE (fp.div RNE (fp.abs (fp.abs (fp.abs x5))) (fp.div RNE (fp.abs (fp.abs x9)) (fp.sqrt RNE (fp.max (fp.div RNE x8 x0) (fp.div RNE x8 x2))))) (fp.neg (fp.min (fp.abs (fp.div RNE x1 (fp.roundToIntegral RNE x4))) (fp.abs (fp.div RNE x8 x4))))) (fp.max (fp.add RNE (fp.div RNE (fp.mul RNE (fp.abs x6) (fp.abs x6)) (fp.mul RNE (fp.abs (fp.sqrt RNE x4)) (fp.min (fp.abs x3) (fp.abs x0)))) (fp.sqrt RNE (fp.sqrt RNE (fp.mul RNE x3 x7)))) (fp.div RNE (fp.sqrt RNE (fp.add RNE (fp.add RNE x2 x9) (fp.div RNE x1 x0))) (fp.abs (fp.sqrt RNE (fp.abs x0)))))))(check-sat)