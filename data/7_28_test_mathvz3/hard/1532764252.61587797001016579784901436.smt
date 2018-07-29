;  time  = {'z3': 582.827, 'mathsat': 45.57899475097656}
;  terms = 123
;  score = 537.2480052490234
;  stdout= {'z3': 'sat\n', 'mathsat': 'sat'}
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
(assert (fp.eq (fp.div RNE (fp.add RNE (fp.add RNE (fp.max (fp.div RNE x5 x2) (fp.mul RNE x0 x5)) (fp.min (fp.add RNE (fp.add RNE x9 x8) (fp.div RNE x6 x4)) (fp.sub RNE (fp.add RNE x0 x9) (fp.mul RNE x8 x6)))) (fp.roundToIntegral RNE (fp.add RNE (fp.add RNE (fp.div RNE x9 x7) (fp.roundToIntegral RNE x5)) (fp.roundToIntegral RNE (fp.add RNE x6 x9))))) (fp.div RNE (fp.add RNE (fp.min (fp.div RNE x4 x3) (fp.sub RNE x9 x9)) (fp.sub RNE (fp.min (fp.sqrt RNE x3) (fp.neg x6)) (fp.sub RNE (fp.add RNE x1 x5) (fp.roundToIntegral RNE x4)))) (fp.add RNE (fp.add RNE (fp.max x9 x4) (fp.min x0 x1)) (fp.div RNE (fp.sub RNE x7 x8) (fp.roundToIntegral RNE x0))))) (fp.div RNE (fp.min (fp.max (fp.sub RNE (fp.add RNE x5 x1) (fp.neg x8)) (fp.abs (fp.add RNE x3 x4))) (fp.min (fp.div RNE (fp.div RNE x8 x2) (fp.sub RNE x0 x4)) (fp.add RNE (fp.div RNE x4 x0) (fp.min (fp.mul RNE x2 x7) (fp.abs x0))))) (fp.roundToIntegral RNE (fp.max (fp.sub RNE (fp.min x6 x0) (fp.div RNE x0 (fp.neg x7))) (fp.div RNE (fp.max x9 x3) (fp.min (fp.neg x5) (fp.abs x0))))))))(check-sat)