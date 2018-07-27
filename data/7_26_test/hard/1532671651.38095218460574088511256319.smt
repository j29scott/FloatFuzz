;  time  = {'mathsat': 20.59251379966736, 'z3': 600}
;  terms = 57
;  score = 579.4074862003326
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
(assert (fp.isNegative (fp.div RNE (fp.mul RNE (fp.sqrt RNE (fp.roundToIntegral RNE (fp.mul RNE x9 x0))) (fp.abs (fp.div RNE (fp.sub RNE x5 x6) (fp.sqrt RNE (fp.div RNE x5 x2))))) (fp.sub RNE (fp.sub RNE (fp.sub RNE (fp.sqrt RNE x5) (fp.sub RNE (fp.roundToIntegral RNE x5) (fp.sub RNE x4 x3))) (fp.div RNE (fp.add RNE (fp.sqrt RNE x2) (fp.div RNE x1 x4)) (fp.add RNE (fp.div RNE x3 x2) (fp.add RNE x1 x7)))) (fp.sub RNE (fp.min (fp.sqrt RNE x6) (fp.div RNE x8 x6)) (fp.sqrt RNE (fp.add RNE (fp.div RNE x9 x1) (fp.add RNE x8 x0))))))))(check-sat)