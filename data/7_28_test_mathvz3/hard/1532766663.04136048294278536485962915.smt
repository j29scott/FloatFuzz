;  time  = {'z3': 600, 'mathsat': 7.050194263458252}
;  terms = 120
;  score = 592.9498057365417
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
(assert (fp.geq (fp.max (fp.div RNE (fp.div RNE (fp.max (fp.div RNE x6 x9) (fp.add RNE x2 (fp.min x0 x5))) (fp.div RNE (fp.div RNE x0 (fp.div RNE x6 x0)) (fp.sqrt RNE (fp.add RNE x7 x4)))) (fp.min (fp.max (fp.max (fp.roundToIntegral RNE x9) (fp.div RNE x6 x9)) (fp.neg (fp.max x4 x0))) (fp.roundToIntegral RNE (fp.add RNE (fp.abs x0) (fp.max x2 x1))))) (fp.add RNE (fp.add RNE (fp.sqrt RNE (fp.add RNE (fp.mul RNE x2 x4) (fp.max x8 x6))) (fp.add RNE (fp.mul RNE (fp.div RNE x0 x4) (fp.add RNE x3 x9)) (fp.max (fp.add RNE x1 x4) (fp.div RNE x9 x4)))) (fp.neg (fp.roundToIntegral RNE (fp.mul RNE (fp.div RNE x1 x6) (fp.sub RNE x8 x8)))))) (fp.div RNE (fp.add RNE (fp.sqrt RNE (fp.sqrt RNE (fp.sqrt RNE x6))) (fp.sqrt RNE (fp.sqrt RNE (fp.neg (fp.neg x9))))) (fp.sub RNE (fp.div RNE (fp.neg (fp.max (fp.sub RNE x8 x2) (fp.div RNE x3 x8))) (fp.sqrt RNE (fp.div RNE (fp.max x9 x8) (fp.sqrt RNE x5)))) (fp.div RNE (fp.max (fp.div RNE (fp.max x6 x2) (fp.max x7 x3)) (fp.sqrt RNE (fp.roundToIntegral RNE x2))) (fp.sqrt RNE (fp.sqrt RNE (fp.neg x3))))))))(check-sat)