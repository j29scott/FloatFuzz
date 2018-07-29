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
(assert (fp.gt (fp.sqrt RNE (fp.div RNE (fp.max (fp.abs (fp.div RNE x0 x2)) (fp.max (fp.add RNE x9 x2) (fp.div RNE x8 x0))) (fp.div RNE (fp.max (fp.max (fp.mul RNE x8 x3) (fp.sqrt RNE x1)) (fp.div RNE (fp.sqrt RNE x5) (fp.sub RNE x2 x0))) (fp.sub RNE (fp.add RNE (fp.abs x9) (fp.div RNE x5 x8)) (fp.neg (fp.sqrt RNE x0)))))) (fp.roundToIntegral RNE (fp.div RNE (fp.div RNE (fp.div RNE (fp.neg x5) (fp.sqrt RNE (fp.abs x9))) (fp.div RNE (fp.div RNE x8 x9) (fp.max x7 (fp.neg x9)))) (fp.max (fp.abs (fp.abs (fp.div RNE x4 x4))) (fp.min (fp.roundToIntegral RNE (fp.div RNE x4 x3)) (fp.mul RNE (fp.add RNE x1 x0) (fp.div RNE x4 x7))))))))(check-sat)