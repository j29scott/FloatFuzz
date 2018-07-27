;  time  = {'z3': 600, 'mathsat': 102.18906927108765}
;  terms = 65
;  score = 497.81093072891235
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
(assert (fp.isSubnormal (fp.mul RNE (fp.mul RNE (fp.sqrt RNE (fp.div RNE (fp.mul RNE x4 x0) (fp.add RNE (fp.div RNE x7 x5) (fp.roundToIntegral RNE x4)))) (fp.roundToIntegral RNE (fp.neg (fp.abs (fp.sub RNE x3 x0))))) (fp.mul RNE (fp.div RNE (fp.sub RNE (fp.mul RNE (fp.max x0 x0) (fp.div RNE x6 x4)) (fp.roundToIntegral RNE (fp.sqrt RNE x4))) (fp.neg (fp.mul RNE (fp.div RNE x2 x3) (fp.roundToIntegral RNE x5)))) (fp.div RNE (fp.mul RNE (fp.div RNE (fp.roundToIntegral RNE x5) (fp.neg x1)) (fp.div RNE (fp.div RNE x4 x4) (fp.roundToIntegral RNE x3))) (fp.div RNE (fp.abs (fp.mul RNE x9 x1)) (fp.add RNE (fp.sub RNE x4 x8) (fp.div RNE x0 x0))))))))(check-sat)