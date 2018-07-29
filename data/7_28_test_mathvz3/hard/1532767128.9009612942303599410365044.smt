;  time  = {'mathsat': 8.56350040435791, 'z3': 600}
;  terms = 84
;  score = 591.4364995956421
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
(assert (fp.lt (fp.min (fp.mul RNE (fp.div RNE (fp.abs (fp.add RNE x1 x1)) (fp.add RNE (fp.mul RNE x1 x5) (fp.div RNE (fp.sub RNE x7 x2) (fp.div RNE x5 x9)))) (fp.add RNE (fp.div RNE (fp.add RNE x4 (fp.add RNE x7 x0)) (fp.sqrt RNE (fp.neg x2))) (fp.min (fp.neg (fp.mul RNE x3 x5)) (fp.sqrt RNE (fp.min x1 x7))))) (fp.sqrt RNE (fp.max (fp.max (fp.div RNE x0 x6) (fp.div RNE x3 x9)) (fp.div RNE (fp.add RNE x4 (fp.div RNE x3 x0)) (fp.div RNE x4 x6))))) (fp.roundToIntegral RNE (fp.mul RNE (fp.div RNE (fp.sqrt RNE (fp.max x5 x0)) (fp.sqrt RNE (fp.mul RNE x8 x4))) (fp.div RNE (fp.div RNE (fp.roundToIntegral RNE x1) (fp.mul RNE x6 x0)) (fp.mul RNE (fp.min x9 x9) (fp.add RNE (fp.div RNE x4 x0) (fp.sqrt RNE x1))))))))(check-sat)