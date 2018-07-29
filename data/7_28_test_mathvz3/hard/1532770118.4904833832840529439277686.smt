;  time  = {'mathsat': 6.725353479385376, 'z3': 600}
;  terms = 74
;  score = 593.2746465206146
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
(assert (fp.isNaN (fp.mul RNE (fp.div RNE (fp.max (fp.mul RNE (fp.div RNE x7 x7) (fp.div RNE (fp.mul RNE x1 x9) (fp.div RNE x3 x6))) (fp.sqrt RNE (fp.add RNE x0 x0))) (fp.mul RNE (fp.mul RNE (fp.max x2 x2) (fp.sqrt RNE x3)) (fp.sqrt RNE (fp.div RNE (fp.div RNE x0 x9) (fp.mul RNE x2 x8))))) (fp.div RNE (fp.mul RNE (fp.add RNE (fp.div RNE (fp.mul RNE x4 x4) (fp.div RNE x6 x8)) (fp.sqrt RNE (fp.sqrt RNE x5))) (fp.sqrt RNE (fp.roundToIntegral RNE (fp.max x0 x7)))) (fp.min (fp.max (fp.div RNE (fp.sub RNE x1 x3) (fp.roundToIntegral RNE x6)) (fp.mul RNE (fp.sqrt RNE x7) (fp.mul RNE x4 x5))) (fp.sqrt RNE (fp.div RNE (fp.mul RNE x7 x0) (fp.max x0 x2))))))))(check-sat)