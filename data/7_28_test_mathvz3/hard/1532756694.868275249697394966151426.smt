;  time  = {'z3': 600, 'mathsat': 23.91567063331604}
;  terms = 76
;  score = 576.084329366684
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
(assert (fp.gt (fp.abs (fp.div RNE (fp.roundToIntegral RNE (fp.mul RNE (fp.mul RNE x7 (fp.div RNE x1 x5)) (fp.div RNE (fp.mul RNE x5 x0) (fp.div RNE x9 x4)))) (fp.sqrt RNE (fp.roundToIntegral RNE (fp.neg x4))))) (fp.mul RNE (fp.div RNE (fp.div RNE (fp.sqrt RNE (fp.add RNE x9 x5)) (fp.roundToIntegral RNE (fp.sub RNE x5 x1))) (fp.div RNE (fp.mul RNE (fp.sqrt RNE x3) (fp.roundToIntegral RNE x8)) (fp.mul RNE (fp.sub RNE x8 x7) (fp.add RNE x5 x2)))) (fp.div RNE (fp.div RNE (fp.div RNE (fp.neg x7) (fp.div RNE x1 x6)) (fp.abs (fp.div RNE x8 x6))) (fp.div RNE (fp.min (fp.abs (fp.neg x0)) (fp.div RNE (fp.div RNE x6 x1) (fp.roundToIntegral RNE x1))) (fp.add RNE (fp.sqrt RNE (fp.sub RNE x4 x2)) (fp.sqrt RNE (fp.sqrt RNE x4))))))))(check-sat)