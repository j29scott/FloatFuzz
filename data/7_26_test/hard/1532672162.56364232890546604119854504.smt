;  time  = {'z3': 600, 'mathsat': 4.6624743938446045}
;  terms = 70
;  score = 595.3375256061554
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
(assert (fp.isNaN (fp.mul RNE (fp.add RNE (fp.div RNE (fp.sub RNE (fp.div RNE x4 (fp.div RNE x3 x5)) (fp.div RNE (fp.sub RNE x8 x9) (fp.abs x3))) (fp.add RNE (fp.sqrt RNE x5) (fp.mul RNE (fp.abs x5) (fp.div RNE x0 x3)))) (fp.mul RNE (fp.sub RNE (fp.div RNE x9 x2) (fp.div RNE (fp.div RNE x9 x6) (fp.abs x8))) (fp.sub RNE (fp.abs x0) (fp.add RNE x3 (fp.div RNE x6 x2))))) (fp.add RNE (fp.sub RNE (fp.sqrt RNE (fp.mul RNE x1 (fp.mul RNE x3 x5))) (fp.sqrt RNE (fp.mul RNE x7 (fp.roundToIntegral RNE x9)))) (fp.mul RNE (fp.neg (fp.div RNE (fp.min x3 x9) (fp.add RNE x6 x2))) (fp.abs (fp.sqrt RNE (fp.roundToIntegral RNE x7))))))))(check-sat)