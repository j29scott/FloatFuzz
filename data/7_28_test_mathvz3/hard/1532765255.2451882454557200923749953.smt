;  time  = {'z3': 600, 'mathsat': 108.07229924201965}
;  terms = 75
;  score = 491.92770075798035
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
(assert (fp.isSubnormal (fp.sub RNE (fp.sub RNE (fp.add RNE (fp.div RNE (fp.div RNE x6 x0) (fp.mul RNE x3 (fp.add RNE x4 x5))) (fp.sub RNE (fp.mul RNE x3 (fp.roundToIntegral RNE x5)) (fp.max x9 x0))) (fp.sqrt RNE (fp.add RNE (fp.mul RNE (fp.sub RNE x1 x4) (fp.div RNE x0 x8)) (fp.add RNE (fp.sqrt RNE x3) (fp.sqrt RNE x5))))) (fp.div RNE (fp.mul RNE (fp.neg (fp.neg x6)) (fp.mul RNE (fp.div RNE x7 (fp.min x6 x9)) (fp.add RNE x4 x8))) (fp.sub RNE (fp.add RNE (fp.sub RNE (fp.sqrt RNE x2) (fp.div RNE x5 x2)) (fp.sub RNE (fp.mul RNE x3 x4) (fp.sub RNE x4 x3))) (fp.sub RNE (fp.mul RNE (fp.sub RNE x6 x4) (fp.neg x1)) (fp.neg (fp.sub RNE x6 x4))))))))(check-sat)