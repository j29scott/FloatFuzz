;  time  = {'mathsat': 6.269339084625244, 'z3': 600}
;  terms = 60
;  score = 593.7306609153748
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
(assert (fp.isNegative (fp.div RNE (fp.mul RNE (fp.mul RNE (fp.max (fp.abs x0) (fp.div RNE x6 x4)) (fp.div RNE (fp.add RNE x4 (fp.add RNE x0 x2)) (fp.mul RNE x6 x3))) (fp.div RNE (fp.mul RNE (fp.div RNE x7 (fp.max x3 x0)) (fp.div RNE (fp.mul RNE x5 x4) (fp.add RNE x3 x8))) (fp.add RNE (fp.add RNE x2 (fp.add RNE x7 x6)) (fp.add RNE x9 x5)))) (fp.mul RNE (fp.mul RNE (fp.sqrt RNE (fp.abs x2)) (fp.neg (fp.div RNE x5 (fp.div RNE x1 x4)))) (fp.sqrt RNE (fp.mul RNE (fp.neg x6) (fp.mul RNE x4 x9)))))))(check-sat)