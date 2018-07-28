;  time  = {'z3': 600, 'mathsat': 27.941749334335327}
;  terms = 64
;  score = 572.0582506656647
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
(assert (fp.gt (fp.mul RNE (fp.div RNE (fp.neg (fp.div RNE (fp.div RNE x6 x6) (fp.mul RNE (fp.neg x8) (fp.div RNE x2 x4)))) (fp.abs (fp.div RNE (fp.add RNE x1 x3) (fp.abs x0)))) (fp.div RNE (fp.div RNE (fp.sqrt RNE (fp.sub RNE x4 x9)) (fp.sub RNE (fp.add RNE x1 x8) (fp.abs x2))) (fp.max (fp.div RNE (fp.abs x9) (fp.mul RNE x7 x5)) (fp.max (fp.roundToIntegral RNE x7) (fp.roundToIntegral RNE x0))))) (fp.sqrt RNE (fp.roundToIntegral RNE (fp.div RNE (fp.div RNE (fp.div RNE x0 x1) (fp.sub RNE x5 x3)) (fp.div RNE (fp.neg x7) (fp.add RNE (fp.neg x3) (fp.max x9 x6))))))))(check-sat)