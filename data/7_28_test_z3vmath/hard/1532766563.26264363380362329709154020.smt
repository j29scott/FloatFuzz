;  time  = {'z3': 547.402}
;  terms = 59
;  score = 547.402
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
(assert (fp.lt (fp.mul RNE (fp.roundToIntegral RNE (fp.abs (fp.abs (fp.div RNE x1 (fp.sqrt RNE x9))))) (fp.div RNE (fp.div RNE (fp.div RNE (fp.max x0 x9) (fp.mul RNE (fp.add RNE x8 x6) (fp.mul RNE x5 x9))) (fp.div RNE (fp.max x7 x8) (fp.div RNE x0 (fp.mul RNE x1 x6)))) (fp.abs (fp.div RNE (fp.abs x0) (fp.min x9 x1))))) (fp.div RNE (fp.sqrt RNE (fp.abs (fp.div RNE (fp.div RNE x5 (fp.sqrt RNE x1)) (fp.div RNE x0 (fp.mul RNE x6 x4))))) (fp.sqrt RNE (fp.abs (fp.mul RNE (fp.sub RNE x9 x6) (fp.abs x0)))))))(check-sat)