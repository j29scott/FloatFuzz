;  time  = {'z3': 595.465}
;  terms = 62
;  score = 595.465
;  stdout= {'z3': 'sat\n'}
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
(assert (fp.geq (fp.add RNE (fp.abs (fp.abs (fp.mul RNE (fp.min x8 x9) (fp.abs x3)))) (fp.div RNE (fp.div RNE (fp.sqrt RNE (fp.roundToIntegral RNE x5)) (fp.div RNE (fp.sub RNE x0 x8) (fp.sqrt RNE x8))) (fp.min (fp.min (fp.add RNE x9 x8) (fp.mul RNE x9 x9)) (fp.div RNE (fp.div RNE x0 (fp.roundToIntegral RNE x6)) (fp.sqrt RNE x8))))) (fp.add RNE (fp.roundToIntegral RNE (fp.div RNE (fp.div RNE (fp.div RNE x0 x1) (fp.mul RNE x2 x0)) (fp.sub RNE (fp.abs (fp.sub RNE x4 x5)) (fp.div RNE (fp.div RNE x7 x4) (fp.abs x7))))) (fp.abs (fp.abs (fp.roundToIntegral RNE (fp.sqrt RNE x9)))))))(check-sat)