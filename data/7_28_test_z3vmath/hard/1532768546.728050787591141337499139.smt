;  time  = {'z3': 600}
;  terms = 78
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
(assert (fp.gt (fp.sub RNE (fp.div RNE (fp.abs (fp.abs (fp.div RNE x6 x9))) (fp.abs (fp.sub RNE (fp.div RNE x4 (fp.neg x1)) (fp.neg x8)))) (fp.mul RNE (fp.mul RNE (fp.mul RNE (fp.div RNE x7 (fp.roundToIntegral RNE x7)) (fp.div RNE x4 (fp.mul RNE x1 x8))) (fp.min (fp.div RNE x0 x2) (fp.abs x2))) (fp.abs (fp.sub RNE (fp.div RNE x5 x3) (fp.sub RNE x9 x4))))) (fp.div RNE (fp.add RNE (fp.sub RNE (fp.div RNE (fp.min x9 x4) (fp.div RNE x7 (fp.abs x3))) (fp.abs (fp.div RNE x3 x6))) (fp.abs (fp.sqrt RNE (fp.div RNE x8 (fp.abs x0))))) (fp.sqrt RNE (fp.mul RNE (fp.sub RNE (fp.mul RNE x6 x6) (fp.div RNE x5 (fp.div RNE x2 x8))) (fp.abs (fp.max x2 x3)))))))(check-sat)