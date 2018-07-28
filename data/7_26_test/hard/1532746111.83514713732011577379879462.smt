;  time  = {'z3': 600, 'mathsat': 7.923469543457031}
;  terms = 70
;  score = 592.076530456543
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
(assert (fp.isZero (fp.div RNE (fp.mul RNE (fp.mul RNE (fp.sub RNE (fp.div RNE x1 x8) (fp.div RNE x0 (fp.abs x0))) (fp.roundToIntegral RNE (fp.div RNE x4 x5))) (fp.div RNE (fp.div RNE (fp.mul RNE x0 x9) (fp.div RNE x0 (fp.roundToIntegral RNE x0))) (fp.div RNE (fp.div RNE x8 (fp.div RNE x0 x1)) (fp.max x1 x4)))) (fp.div RNE (fp.sub RNE (fp.neg (fp.sqrt RNE (fp.div RNE x2 x2))) (fp.div RNE (fp.abs (fp.roundToIntegral RNE x2)) (fp.max (fp.neg x9) (fp.div RNE x1 x7)))) (fp.add RNE (fp.roundToIntegral RNE (fp.neg (fp.max x7 x7))) (fp.max (fp.div RNE (fp.max x1 x6) (fp.neg x3)) (fp.div RNE (fp.add RNE x2 x4) (fp.roundToIntegral RNE x9))))))))(check-sat)