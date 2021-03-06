;  time  = {'mathsat': 6.598783493041992, 'z3': 598.217}
;  terms = 75
;  score = 591.618216506958
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
(assert (fp.isZero (fp.mul RNE (fp.div RNE (fp.div RNE (fp.add RNE (fp.max x4 (fp.sqrt RNE x9)) (fp.div RNE x8 x0)) (fp.sqrt RNE (fp.roundToIntegral RNE (fp.div RNE x0 x7)))) (fp.max (fp.max (fp.max x9 x2) (fp.add RNE (fp.add RNE x8 x6) (fp.max x3 x8))) (fp.div RNE (fp.roundToIntegral RNE x3) (fp.div RNE x9 x4)))) (fp.div RNE (fp.max (fp.mul RNE (fp.div RNE x3 (fp.div RNE x6 x9)) (fp.div RNE x4 x7)) (fp.sqrt RNE (fp.sub RNE (fp.max x9 x0) (fp.sub RNE x4 x4)))) (fp.div RNE (fp.div RNE (fp.div RNE x5 (fp.sub RNE x3 x2)) (fp.roundToIntegral RNE x2)) (fp.div RNE (fp.min (fp.div RNE x4 x8) (fp.mul RNE x8 x6)) (fp.neg (fp.add RNE x7 x5))))))))(check-sat)