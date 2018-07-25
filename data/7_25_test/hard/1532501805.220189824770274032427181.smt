;  time  = {'z3': 600}
;  terms = 65
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
(assert (fp.eq (fp.sqrt RNE (fp.div RNE (fp.mul RNE (fp.max (fp.roundToIntegral RNE x8) (fp.sqrt RNE x0)) (fp.sqrt RNE (fp.div RNE x9 x6))) (fp.min (fp.min (fp.mul RNE x3 x0) (fp.add RNE x2 x3)) (fp.abs (fp.abs x8))))) (fp.div RNE (fp.max (fp.roundToIntegral RNE (fp.div RNE (fp.div RNE x6 x7) (fp.abs x5))) (fp.div RNE (fp.roundToIntegral RNE (fp.abs x0)) (fp.mul RNE (fp.min x8 x1) (fp.sub RNE x8 x0)))) (fp.mul RNE (fp.max (fp.abs (fp.div RNE x2 x5)) (fp.add RNE (fp.sub RNE x2 x9) (fp.roundToIntegral RNE x9))) (fp.min (fp.sqrt RNE (fp.mul RNE x8 x0)) (fp.sqrt RNE (fp.max x8 x9)))))))(check-sat)