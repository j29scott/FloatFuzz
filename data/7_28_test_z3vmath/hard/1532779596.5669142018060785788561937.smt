;  time  = {'z3': 570.126}
;  terms = 68
;  score = 570.126
;  stdout= {'z3': 'sat\n'}
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
(assert (fp.eq (fp.sub RNE (fp.abs (fp.max (fp.sub RNE (fp.neg x8) (fp.neg x1)) (fp.neg (fp.sqrt RNE x4)))) (fp.abs (fp.div RNE (fp.sqrt RNE (fp.min x8 x7)) (fp.sqrt RNE (fp.sqrt RNE x1))))) (fp.mul RNE (fp.min (fp.add RNE (fp.max (fp.sqrt RNE x2) (fp.sub RNE x7 x7)) (fp.div RNE (fp.div RNE (fp.abs x9) (fp.add RNE x0 x2)) (fp.abs (fp.max x3 x1)))) (fp.mul RNE (fp.add RNE (fp.sub RNE x3 x8) (fp.mul RNE x6 x1)) (fp.abs (fp.neg x6)))) (fp.add RNE (fp.neg (fp.roundToIntegral RNE (fp.roundToIntegral RNE x2))) (fp.mul RNE (fp.abs (fp.add RNE x7 (fp.max x3 x1))) (fp.sqrt RNE (fp.div RNE x9 x0)))))))(check-sat)