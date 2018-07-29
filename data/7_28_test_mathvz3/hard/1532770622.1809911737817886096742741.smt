;  time  = {'mathsat': 40.12645721435547, 'z3': 600}
;  terms = 122
;  score = 559.8735427856445
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
(assert (fp.gt (fp.mul RNE (fp.min (fp.min (fp.sub RNE (fp.sub RNE x0 x0) (fp.max x1 x4)) (fp.sqrt RNE (fp.mul RNE (fp.sqrt RNE x1) (fp.sub RNE x2 x4)))) (fp.sub RNE (fp.div RNE (fp.mul RNE x6 (fp.roundToIntegral RNE x9)) (fp.min x3 x1)) (fp.div RNE (fp.min (fp.max x6 x0) (fp.abs x6)) (fp.neg (fp.mul RNE x7 x1))))) (fp.add RNE (fp.min (fp.div RNE (fp.sqrt RNE (fp.div RNE x4 x6)) (fp.min (fp.sqrt RNE x1) (fp.min x1 x2))) (fp.neg (fp.min (fp.abs x8) (fp.roundToIntegral RNE x1)))) (fp.min (fp.neg (fp.min (fp.roundToIntegral RNE x0) (fp.max x5 x2))) (fp.div RNE (fp.roundToIntegral RNE (fp.min x6 x0)) (fp.sqrt RNE (fp.sub RNE x6 x5)))))) (fp.sub RNE (fp.abs (fp.neg (fp.min (fp.neg x9) (fp.mul RNE x4 x3)))) (fp.mul RNE (fp.mul RNE (fp.div RNE (fp.roundToIntegral RNE x8) (fp.mul RNE (fp.div RNE x1 x2) (fp.roundToIntegral RNE x4))) (fp.mul RNE (fp.mul RNE x3 (fp.mul RNE x2 x7)) (fp.min (fp.mul RNE x2 x6) (fp.mul RNE x4 x3)))) (fp.div RNE (fp.div RNE (fp.min x3 x1) (fp.abs x2)) (fp.div RNE (fp.sub RNE x2 (fp.mul RNE x7 x9)) (fp.sqrt RNE x4)))))))(check-sat)