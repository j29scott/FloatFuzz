;  time  = {'mathsat': 24.44515824317932, 'z3': 591.494}
;  terms = 50
;  score = 567.0488417568207
;  stdout= {'mathsat': 'sat', 'z3': 'sat\n'}
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
(assert (fp.isNegative (fp.div RNE (fp.abs (fp.mul RNE (fp.div RNE (fp.mul RNE x0 (fp.mul RNE x5 x1)) (fp.div RNE (fp.max x2 x2) (fp.div RNE x7 x3))) (fp.div RNE (fp.max x2 x3) (fp.mul RNE (fp.div RNE x0 x1) (fp.div RNE x0 x2))))) (fp.roundToIntegral RNE (fp.div RNE (fp.div RNE (fp.mul RNE x6 x0) (fp.mul RNE x4 (fp.div RNE x7 x0))) (fp.sub RNE (fp.sqrt RNE (fp.add RNE x7 x0)) (fp.div RNE (fp.sqrt RNE x0) (fp.div RNE x6 x4))))))))(check-sat)