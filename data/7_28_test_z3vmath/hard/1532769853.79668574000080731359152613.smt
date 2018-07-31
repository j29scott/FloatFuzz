;  time  = {'z3': 600}
;  terms = 74
;  score = 600
;  stdout= {'z3': 'timeout\n'}
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
(assert (fp.geq (fp.div RNE (fp.div RNE (fp.abs (fp.mul RNE (fp.neg x7) (fp.div RNE x8 x1))) (fp.sub RNE (fp.roundToIntegral RNE (fp.sub RNE (fp.max x4 x0) (fp.neg x7))) (fp.sqrt RNE (fp.add RNE (fp.mul RNE x7 x7) (fp.div RNE x2 x8))))) (fp.roundToIntegral RNE (fp.sub RNE (fp.sqrt RNE (fp.max (fp.add RNE x9 x3) (fp.div RNE x9 x0))) (fp.max (fp.div RNE (fp.neg x4) (fp.div RNE x6 x0)) (fp.min (fp.neg x5) (fp.div RNE x9 x7)))))) (fp.abs (fp.div RNE (fp.sqrt RNE (fp.div RNE (fp.neg x8) (fp.div RNE (fp.neg x1) (fp.div RNE x1 x1)))) (fp.min (fp.div RNE (fp.div RNE x8 x4) (fp.div RNE x1 x7)) (fp.abs (fp.div RNE x3 (fp.roundToIntegral RNE x7))))))))(check-sat)