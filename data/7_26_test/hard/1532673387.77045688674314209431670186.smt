;  time  = {'mathsat': 159.94026708602905, 'z3': 600}
;  terms = 82
;  score = 440.05973291397095
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
(assert (fp.eq (fp.roundToIntegral RNE (fp.div RNE (fp.max (fp.sqrt RNE (fp.max x1 x7)) (fp.div RNE (fp.sqrt RNE x8) (fp.add RNE (fp.min x8 x3) (fp.div RNE x8 x5)))) (fp.div RNE (fp.sqrt RNE (fp.abs x7)) (fp.sub RNE (fp.sub RNE x7 x6) (fp.sqrt RNE x3))))) (fp.add RNE (fp.max (fp.sub RNE (fp.neg (fp.div RNE x3 (fp.roundToIntegral RNE x3))) (fp.sqrt RNE (fp.div RNE x7 x2))) (fp.max (fp.neg (fp.div RNE x2 (fp.sqrt RNE x1))) (fp.div RNE (fp.abs x7) (fp.max (fp.roundToIntegral RNE x6) (fp.mul RNE x9 x0))))) (fp.div RNE (fp.mul RNE (fp.add RNE (fp.sub RNE x5 x8) (fp.mul RNE x8 x4)) (fp.div RNE (fp.add RNE x0 x4) (fp.div RNE x6 (fp.min x5 x2)))) (fp.abs (fp.div RNE (fp.div RNE x3 x2) (fp.abs (fp.div RNE x3 x7))))))))(check-sat)