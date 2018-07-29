;  time  = {'mathsat': 600, 'z3': 600}
;  terms = 78
;  score = 0
;  stdout= {'mathsat': '', 'z3': 'timeout\n'}
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
(assert (fp.isZero (fp.sub RNE (fp.mul RNE (fp.mul RNE (fp.div RNE (fp.roundToIntegral RNE x6) (fp.sub RNE (fp.neg x1) (fp.sub RNE x2 x6))) (fp.sub RNE (fp.div RNE x6 x3) (fp.mul RNE x6 (fp.mul RNE x5 x4)))) (fp.mul RNE (fp.max (fp.sub RNE x2 (fp.sub RNE x6 x7)) (fp.mul RNE x3 x7)) (fp.sub RNE (fp.add RNE x3 x1) (fp.neg (fp.div RNE x3 x5))))) (fp.sub RNE (fp.div RNE (fp.sub RNE (fp.sqrt RNE x6) (fp.div RNE x3 x7)) (fp.mul RNE (fp.mul RNE x2 x5) (fp.add RNE x2 x9))) (fp.div RNE (fp.mul RNE (fp.sub RNE x2 (fp.sqrt RNE x9)) (fp.mul RNE x1 (fp.mul RNE x8 x2))) (fp.sub RNE (fp.abs (fp.add RNE x8 x8)) (fp.add RNE (fp.add RNE x3 x6) (fp.div RNE x6 x3))))))))(check-sat)