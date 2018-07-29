;  time  = {'z3': 600}
;  terms = 82
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
(assert (fp.eq (fp.abs (fp.sub RNE (fp.sub RNE (fp.mul RNE (fp.mul RNE x8 x4) (fp.div RNE x6 x2)) (fp.neg (fp.roundToIntegral RNE (fp.mul RNE x0 x8)))) (fp.div RNE (fp.abs (fp.min (fp.div RNE x0 x1) (fp.div RNE x1 x4))) (fp.add RNE (fp.div RNE (fp.abs x3) (fp.neg x0)) (fp.div RNE (fp.abs x8) (fp.sqrt RNE x0)))))) (fp.div RNE (fp.abs (fp.sqrt RNE (fp.abs (fp.abs x8)))) (fp.sub RNE (fp.max (fp.mul RNE (fp.sub RNE x4 x5) (fp.mul RNE x7 x8)) (fp.div RNE (fp.mul RNE x0 x6) (fp.div RNE x2 (fp.min x1 x7)))) (fp.add RNE (fp.mul RNE (fp.div RNE (fp.div RNE x0 x4) (fp.abs x6)) (fp.div RNE (fp.sub RNE x1 x1) (fp.div RNE x5 x4))) (fp.neg (fp.min (fp.abs x6) (fp.div RNE x9 x8))))))))(check-sat)