;  time  = {'mathsat': 4.997243642807007, 'z3': 600}
;  terms = 75
;  score = 595.002756357193
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
(assert (fp.isNaN (fp.add RNE (fp.mul RNE (fp.mul RNE (fp.div RNE (fp.mul RNE x6 x7) (fp.sub RNE (fp.mul RNE x7 x4) (fp.sub RNE x4 x8))) (fp.mul RNE (fp.sub RNE (fp.div RNE x6 x4) (fp.div RNE x8 x7)) (fp.div RNE (fp.neg x6) (fp.mul RNE x6 x5)))) (fp.add RNE (fp.roundToIntegral RNE (fp.sub RNE x7 (fp.div RNE x4 x2))) (fp.mul RNE (fp.mul RNE x6 x6) (fp.div RNE x6 x0)))) (fp.mul RNE (fp.mul RNE (fp.max (fp.div RNE x4 x8) (fp.neg x3)) (fp.sub RNE (fp.add RNE (fp.mul RNE x1 x5) (fp.sub RNE x9 x8)) (fp.neg (fp.mul RNE x4 x3)))) (fp.neg (fp.max (fp.sub RNE x3 x4) (fp.add RNE (fp.div RNE x8 x3) (fp.mul RNE x1 x7))))))))(check-sat)