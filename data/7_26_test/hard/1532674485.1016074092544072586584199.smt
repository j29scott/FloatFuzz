;  time  = {'z3': 600, 'mathsat': 8.362741231918335}
;  terms = 88
;  score = 591.6372587680817
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
(assert (fp.isNaN (fp.mul RNE (fp.div RNE (fp.mul RNE (fp.mul RNE (fp.mul RNE x7 (fp.div RNE x4 x4)) (fp.mul RNE x0 (fp.mul RNE x3 x3))) (fp.div RNE (fp.sqrt RNE x3) (fp.sqrt RNE x5))) (fp.add RNE (fp.roundToIntegral RNE (fp.min (fp.div RNE x1 x7) (fp.mul RNE x1 x7))) (fp.add RNE (fp.roundToIntegral RNE (fp.sub RNE x3 x3)) (fp.div RNE (fp.mul RNE x6 x1) (fp.mul RNE x4 x5))))) (fp.div RNE (fp.div RNE (fp.sub RNE (fp.neg (fp.mul RNE x8 x4)) (fp.mul RNE (fp.mul RNE x8 x1) (fp.div RNE x5 x3))) (fp.mul RNE (fp.mul RNE (fp.div RNE x3 x1) (fp.sqrt RNE x8)) (fp.mul RNE (fp.roundToIntegral RNE x1) (fp.mul RNE x7 x6)))) (fp.sub RNE (fp.roundToIntegral RNE (fp.div RNE (fp.sqrt RNE x9) (fp.mul RNE x1 x3))) (fp.mul RNE (fp.mul RNE (fp.div RNE x4 x9) (fp.div RNE x5 x1)) (fp.abs (fp.div RNE x7 x1))))))))(check-sat)