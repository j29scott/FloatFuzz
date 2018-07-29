;  time  = {'z3': 574.63, 'mathsat': 52.03320860862732}
;  terms = 88
;  score = 522.5967913913727
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
(assert (fp.gt (fp.min (fp.neg (fp.min (fp.div RNE (fp.min x5 x9) (fp.roundToIntegral RNE x9)) (fp.div RNE (fp.min (fp.min x0 x1) (fp.sqrt RNE x2)) (fp.roundToIntegral RNE (fp.roundToIntegral RNE x9))))) (fp.neg (fp.abs (fp.max (fp.add RNE (fp.add RNE x8 x7) (fp.max x5 x1)) (fp.sqrt RNE (fp.abs x1)))))) (fp.max (fp.mul RNE (fp.div RNE (fp.min (fp.div RNE x1 x4) (fp.div RNE (fp.sub RNE x4 x7) (fp.min x3 x0))) (fp.roundToIntegral RNE (fp.sqrt RNE x8))) (fp.roundToIntegral RNE (fp.roundToIntegral RNE (fp.div RNE x0 x9)))) (fp.max (fp.roundToIntegral RNE (fp.add RNE (fp.div RNE x7 (fp.div RNE x5 x0)) (fp.mul RNE x8 x8))) (fp.div RNE (fp.max (fp.sqrt RNE x5) (fp.div RNE x7 x9)) (fp.div RNE (fp.div RNE (fp.mul RNE x3 x8) (fp.min x1 x4)) (fp.max (fp.mul RNE x7 x3) (fp.mul RNE x4 x8))))))))(check-sat)