;  time  = {'z3': 600, 'mathsat': 14.981264352798462}
;  terms = 80
;  score = 585.0187356472015
;  stdout= {'z3': 'timeout\n', 'mathsat': 'sat'}
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
(assert (fp.isNormal (fp.min (fp.div RNE (fp.min (fp.div RNE (fp.max x6 (fp.div RNE x1 x0)) (fp.mul RNE x7 x1)) (fp.mul RNE (fp.min x3 x5) (fp.roundToIntegral RNE x9))) (fp.div RNE (fp.div RNE (fp.min x1 x1) (fp.div RNE x8 (fp.min x2 x9))) (fp.min (fp.sqrt RNE x9) (fp.div RNE x5 x5)))) (fp.max (fp.max (fp.abs (fp.neg (fp.neg x8))) (fp.div RNE (fp.abs (fp.neg x1)) (fp.div RNE (fp.div RNE x7 x4) (fp.div RNE x0 x6)))) (fp.div RNE (fp.sub RNE (fp.div RNE (fp.max x4 x5) (fp.max x7 x9)) (fp.sub RNE (fp.neg x5) (fp.mul RNE x8 x5))) (fp.add RNE (fp.max (fp.roundToIntegral RNE x7) (fp.sub RNE x1 x3)) (fp.div RNE (fp.mul RNE x1 x7) (fp.abs x1))))))))(check-sat)