;  time  = {'z3': 600, 'mathsat': 10.263068675994873}
;  terms = 75
;  score = 589.7369313240051
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
(assert (fp.eq (fp.abs (fp.max (fp.abs (fp.div RNE (fp.roundToIntegral RNE x4) (fp.mul RNE x6 x2))) (fp.abs (fp.mul RNE (fp.neg x0) (fp.mul RNE x5 (fp.abs x2)))))) (fp.div RNE (fp.add RNE (fp.mul RNE (fp.max (fp.abs x8) (fp.roundToIntegral RNE x4)) (fp.sqrt RNE (fp.mul RNE x7 x0))) (fp.add RNE (fp.abs (fp.mul RNE x9 x7)) (fp.abs (fp.abs x7)))) (fp.add RNE (fp.mul RNE (fp.abs (fp.neg x1)) (fp.mul RNE (fp.add RNE (fp.div RNE x7 x1) (fp.abs x8)) (fp.neg (fp.add RNE x2 x2)))) (fp.mul RNE (fp.min (fp.abs x3) (fp.mul RNE x3 x6)) (fp.max (fp.sub RNE (fp.sub RNE x9 x0) (fp.mul RNE x2 x3)) (fp.mul RNE (fp.abs x0) (fp.div RNE x4 x9))))))))(check-sat)