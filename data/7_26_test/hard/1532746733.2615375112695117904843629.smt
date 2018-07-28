;  time  = {'z3': 559.538, 'mathsat': 20.781733751296997}
;  terms = 62
;  score = 538.756266248703
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
(assert (fp.isNormal (fp.div RNE (fp.sub RNE (fp.sub RNE (fp.neg (fp.add RNE x8 x9)) (fp.div RNE (fp.min x3 x4) (fp.mul RNE x2 x1))) (fp.max (fp.add RNE (fp.div RNE x2 x0) (fp.neg x5)) (fp.abs (fp.add RNE x0 x3)))) (fp.mul RNE (fp.abs (fp.div RNE (fp.mul RNE (fp.div RNE x4 x2) (fp.min x9 x3)) (fp.roundToIntegral RNE (fp.mul RNE x9 x2)))) (fp.sub RNE (fp.div RNE (fp.add RNE (fp.sqrt RNE x5) (fp.neg x2)) (fp.div RNE (fp.roundToIntegral RNE x8) (fp.roundToIntegral RNE x1))) (fp.div RNE (fp.abs (fp.div RNE x4 x2)) (fp.div RNE (fp.sqrt RNE x4) (fp.roundToIntegral RNE x3))))))))(check-sat)