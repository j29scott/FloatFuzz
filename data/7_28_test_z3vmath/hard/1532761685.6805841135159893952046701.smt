;  time  = {'z3': 585.714}
;  terms = 63
;  score = 585.714
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
(assert (fp.eq (fp.neg (fp.sub RNE (fp.neg (fp.neg (fp.abs x8))) (fp.neg (fp.max (fp.abs x3) (fp.sqrt RNE x6))))) (fp.max (fp.abs (fp.sub RNE (fp.div RNE (fp.neg x5) (fp.add RNE x3 x7)) (fp.min (fp.min x0 x4) (fp.mul RNE x4 (fp.sqrt RNE x9))))) (fp.mul RNE (fp.div RNE (fp.mul RNE (fp.neg x4) (fp.max (fp.sub RNE x1 x8) (fp.mul RNE x9 x5))) (fp.mul RNE (fp.neg x3) (fp.neg (fp.max x7 x8)))) (fp.add RNE (fp.sqrt RNE (fp.min (fp.div RNE x7 x0) (fp.sub RNE x7 x6))) (fp.neg (fp.roundToIntegral RNE (fp.mul RNE x8 x9))))))))(check-sat)