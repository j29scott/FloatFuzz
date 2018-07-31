;  time  = {'mathsat': 19.516433000564575, 'z3': 600}
;  terms = 91
;  score = 580.4835669994354
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
(assert (fp.geq (fp.neg (fp.max (fp.min (fp.max (fp.max x7 x5) (fp.div RNE x0 x3)) (fp.mul RNE (fp.min x6 x7) (fp.div RNE x1 x7))) (fp.max (fp.mul RNE (fp.abs x0) (fp.neg x3)) (fp.max (fp.sub RNE (fp.div RNE x5 x2) (fp.mul RNE x4 x7)) (fp.max (fp.sqrt RNE x3) (fp.neg x5)))))) (fp.div RNE (fp.max (fp.abs (fp.max (fp.sub RNE x6 x4) (fp.neg x8))) (fp.add RNE (fp.neg (fp.max x1 x5)) (fp.add RNE (fp.div RNE x9 x1) (fp.mul RNE x2 x6)))) (fp.add RNE (fp.max (fp.sqrt RNE (fp.min (fp.div RNE x7 x0) (fp.div RNE x5 x0))) (fp.sqrt RNE (fp.max (fp.sqrt RNE x3) (fp.add RNE x5 x8)))) (fp.max (fp.sqrt RNE (fp.div RNE (fp.div RNE x7 x9) (fp.div RNE x9 x4))) (fp.sub RNE (fp.sqrt RNE (fp.roundToIntegral RNE x7)) (fp.abs (fp.neg x0))))))))(check-sat)