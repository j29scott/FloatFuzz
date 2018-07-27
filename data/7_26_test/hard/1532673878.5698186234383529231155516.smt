;  time  = {'z3': 600, 'mathsat': 600}
;  terms = 80
;  score = 0
;  stdout= {'z3': 'timeout\n', 'mathsat': ''}
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
(assert (fp.isZero (fp.add RNE (fp.add RNE (fp.add RNE (fp.div RNE (fp.add RNE x7 x7) (fp.sub RNE (fp.add RNE x0 x0) (fp.add RNE x8 x4))) (fp.sqrt RNE (fp.sqrt RNE (fp.div RNE x1 x8)))) (fp.div RNE (fp.div RNE (fp.mul RNE (fp.add RNE x6 x2) (fp.roundToIntegral RNE x5)) (fp.roundToIntegral RNE (fp.sub RNE x9 x7))) (fp.neg (fp.abs (fp.max x5 x8))))) (fp.div RNE (fp.add RNE (fp.neg (fp.max (fp.add RNE x2 x7) (fp.roundToIntegral RNE x2))) (fp.abs (fp.add RNE (fp.mul RNE x3 x7) (fp.div RNE x9 x3)))) (fp.div RNE (fp.div RNE (fp.div RNE (fp.mul RNE x1 x3) (fp.roundToIntegral RNE x8)) (fp.add RNE (fp.div RNE x5 x8) (fp.add RNE x2 x6))) (fp.add RNE (fp.roundToIntegral RNE (fp.neg x0)) (fp.min (fp.mul RNE x0 x6) (fp.add RNE x6 x6))))))))(check-sat)