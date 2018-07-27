;  time  = {'mathsat': 25.935648918151855, 'z3': 557.636}
;  terms = 88
;  score = 531.7003510818481
;  stdout= {'mathsat': 'sat', 'z3': 'sat\n'}
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
(assert (fp.isNegative (fp.sub RNE (fp.div RNE (fp.mul RNE (fp.mul RNE (fp.div RNE x8 (fp.abs x6)) (fp.roundToIntegral RNE x5)) (fp.min (fp.div RNE (fp.mul RNE x3 x0) (fp.mul RNE x8 x8)) (fp.mul RNE (fp.sub RNE x8 x5) (fp.neg x9)))) (fp.mul RNE (fp.mul RNE (fp.sub RNE x6 x2) (fp.sub RNE x3 x9)) (fp.abs (fp.sub RNE x1 x3)))) (fp.div RNE (fp.div RNE (fp.neg (fp.div RNE (fp.sub RNE x2 x8) (fp.div RNE x3 x1))) (fp.min (fp.div RNE (fp.mul RNE x4 x9) (fp.sub RNE x6 x5)) (fp.sqrt RNE (fp.div RNE x9 x9)))) (fp.mul RNE (fp.mul RNE (fp.min (fp.mul RNE x0 x1) (fp.div RNE x8 x4)) (fp.mul RNE (fp.div RNE x9 x8) (fp.div RNE x6 x4))) (fp.mul RNE (fp.mul RNE (fp.neg x2) (fp.div RNE x5 x4)) (fp.min (fp.mul RNE x8 x5) (fp.roundToIntegral RNE x4))))))))(check-sat)