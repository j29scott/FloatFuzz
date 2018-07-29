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
(assert (fp.geq (fp.roundToIntegral RNE (fp.div RNE (fp.sub RNE (fp.div RNE (fp.abs x0) (fp.mul RNE x8 x2)) (fp.div RNE (fp.div RNE x2 x1) (fp.abs x0))) (fp.sqrt RNE (fp.min (fp.sub RNE (fp.div RNE x6 x0) (fp.abs x2)) (fp.div RNE (fp.div RNE x5 x9) (fp.roundToIntegral RNE x4)))))) (fp.sub RNE (fp.add RNE (fp.div RNE (fp.sqrt RNE (fp.div RNE x4 x6)) (fp.sub RNE (fp.sqrt RNE x3) (fp.div RNE x1 x9))) (fp.min (fp.abs (fp.add RNE x8 x5)) (fp.div RNE (fp.sub RNE x9 x7) (fp.abs x6)))) (fp.div RNE (fp.abs (fp.sub RNE (fp.abs x2) (fp.max x4 x6))) (fp.sub RNE (fp.max (fp.abs x7) (fp.sub RNE x3 x1)) (fp.sub RNE (fp.div RNE x2 x7) (fp.div RNE x4 (fp.sqrt RNE x3))))))))(check-sat)