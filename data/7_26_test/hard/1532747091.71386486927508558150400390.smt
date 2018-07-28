;  time  = {'mathsat': 28.34340500831604, 'z3': 600}
;  terms = 82
;  score = 571.656594991684
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
(assert (fp.isPositive (fp.div RNE (fp.div RNE (fp.max (fp.div RNE (fp.roundToIntegral RNE x8) (fp.div RNE (fp.mul RNE x0 x4) (fp.mul RNE x4 x3))) (fp.div RNE (fp.min x9 x9) (fp.div RNE x1 x2))) (fp.div RNE (fp.sub RNE (fp.div RNE x6 (fp.roundToIntegral RNE x9)) (fp.neg x2)) (fp.roundToIntegral RNE (fp.div RNE x6 (fp.max x7 x0))))) (fp.add RNE (fp.max (fp.div RNE (fp.sqrt RNE (fp.div RNE x4 x5)) (fp.max (fp.sqrt RNE x1) (fp.abs x0))) (fp.min (fp.sqrt RNE (fp.mul RNE x5 x9)) (fp.sqrt RNE (fp.min x0 x5)))) (fp.div RNE (fp.div RNE (fp.div RNE (fp.add RNE x7 x3) (fp.sqrt RNE x9)) (fp.mul RNE (fp.min x3 x7) (fp.mul RNE x1 x4))) (fp.div RNE (fp.neg (fp.add RNE x6 x3)) (fp.add RNE (fp.roundToIntegral RNE x7) (fp.add RNE x8 x1))))))))(check-sat)