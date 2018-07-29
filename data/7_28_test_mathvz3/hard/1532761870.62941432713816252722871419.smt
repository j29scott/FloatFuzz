;  time  = {'z3': 550.807, 'mathsat': 13.400909185409546}
;  terms = 77
;  score = 537.4060908145905
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
(assert (fp.geq (fp.div RNE (fp.mul RNE (fp.abs (fp.mul RNE (fp.div RNE x7 x6) (fp.div RNE x7 x3))) (fp.div RNE (fp.roundToIntegral RNE (fp.max x0 x4)) (fp.sub RNE (fp.sub RNE x7 x5) (fp.sqrt RNE x4)))) (fp.roundToIntegral RNE (fp.neg (fp.div RNE (fp.neg x0) (fp.div RNE x2 (fp.mul RNE x3 x6)))))) (fp.div RNE (fp.div RNE (fp.add RNE (fp.max (fp.add RNE x5 x2) (fp.min x4 x9)) (fp.div RNE (fp.abs x4) (fp.mul RNE x3 x7))) (fp.add RNE (fp.div RNE (fp.div RNE x0 x1) (fp.sub RNE x1 x9)) (fp.div RNE (fp.sub RNE x6 x0) (fp.div RNE (fp.div RNE x5 x4) (fp.div RNE x0 x6))))) (fp.roundToIntegral RNE (fp.abs (fp.neg (fp.div RNE (fp.min x1 x2) (fp.sub RNE x0 x7))))))))(check-sat)