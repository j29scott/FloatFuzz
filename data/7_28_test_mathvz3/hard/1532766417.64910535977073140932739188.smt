;  time  = {'mathsat': 5.862208366394043, 'z3': 600}
;  terms = 76
;  score = 594.137791633606
;  stdout= {'mathsat': 'sat', 'z3': 'timeout\n'}
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
(assert (fp.lt (fp.abs (fp.neg (fp.mul RNE (fp.mul RNE (fp.min x3 x9) (fp.div RNE (fp.mul RNE x5 x8) (fp.min x2 x1))) (fp.abs (fp.mul RNE x0 x5))))) (fp.div RNE (fp.div RNE (fp.div RNE (fp.div RNE (fp.div RNE x1 x9) (fp.sqrt RNE x6)) (fp.sub RNE (fp.div RNE x4 x2) (fp.roundToIntegral RNE x0))) (fp.roundToIntegral RNE (fp.mul RNE (fp.mul RNE x5 x2) (fp.abs x0)))) (fp.mul RNE (fp.abs (fp.min (fp.mul RNE (fp.max x6 x1) (fp.max x4 x2)) (fp.div RNE (fp.div RNE x6 x9) (fp.max x7 x5)))) (fp.add RNE (fp.min (fp.div RNE (fp.roundToIntegral RNE x0) (fp.mul RNE x4 x5)) (fp.neg (fp.sqrt RNE x4))) (fp.sqrt RNE (fp.sub RNE (fp.roundToIntegral RNE x9) (fp.max x1 x2))))))))(check-sat)