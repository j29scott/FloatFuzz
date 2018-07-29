;  time  = {'z3': 600, 'mathsat': 16.72812032699585}
;  terms = 92
;  score = 583.2718796730042
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
(assert (fp.lt (fp.div RNE (fp.sub RNE (fp.mul RNE (fp.mul RNE (fp.abs x7) (fp.mul RNE x6 x8)) (fp.add RNE (fp.sqrt RNE (fp.sub RNE x2 x3)) (fp.roundToIntegral RNE (fp.neg x0)))) (fp.div RNE (fp.sqrt RNE (fp.min x0 x7)) (fp.sub RNE (fp.add RNE (fp.sub RNE x3 x7) (fp.max x8 x7)) (fp.mul RNE (fp.sub RNE x8 x7) (fp.max x4 x4))))) (fp.roundToIntegral RNE (fp.div RNE (fp.abs (fp.div RNE x7 (fp.div RNE x0 x8))) (fp.sqrt RNE (fp.div RNE (fp.add RNE x1 x7) (fp.roundToIntegral RNE x9)))))) (fp.min (fp.div RNE (fp.abs (fp.div RNE (fp.add RNE x7 x7) (fp.mul RNE x9 x9))) (fp.sub RNE (fp.abs (fp.max x8 x1)) (fp.div RNE (fp.add RNE x0 x6) (fp.max x1 x6)))) (fp.roundToIntegral RNE (fp.sub RNE (fp.mul RNE (fp.roundToIntegral RNE x6) (fp.div RNE (fp.roundToIntegral RNE x1) (fp.mul RNE x9 x1))) (fp.max (fp.roundToIntegral RNE x7) (fp.mul RNE x7 x1)))))))(check-sat)