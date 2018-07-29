;  time  = {'mathsat': 13.352540016174316, 'z3': 585.121}
;  terms = 90
;  score = 571.7684599838257
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
(assert (fp.lt (fp.mul RNE (fp.div RNE (fp.abs (fp.sqrt RNE (fp.neg x6))) (fp.div RNE (fp.div RNE (fp.div RNE x0 x7) (fp.neg x1)) (fp.mul RNE (fp.mul RNE x1 (fp.sqrt RNE x5)) (fp.max x3 x9)))) (fp.add RNE (fp.neg (fp.div RNE (fp.abs (fp.mul RNE x5 x0)) (fp.abs (fp.div RNE x8 x5)))) (fp.mul RNE (fp.max (fp.min (fp.min x6 x6) (fp.roundToIntegral RNE x3)) (fp.mul RNE (fp.sqrt RNE x3) (fp.sqrt RNE x3))) (fp.sqrt RNE (fp.abs (fp.sqrt RNE x4)))))) (fp.min (fp.abs (fp.roundToIntegral RNE (fp.roundToIntegral RNE (fp.div RNE x2 x3)))) (fp.add RNE (fp.max (fp.div RNE (fp.div RNE x8 (fp.min x6 x9)) (fp.mul RNE x2 (fp.neg x2))) (fp.roundToIntegral RNE (fp.mul RNE x4 (fp.div RNE x7 x9)))) (fp.min (fp.sub RNE (fp.sqrt RNE x8) (fp.mul RNE x8 (fp.div RNE x0 x7))) (fp.sub RNE (fp.div RNE x3 x6) (fp.abs x3)))))))(check-sat)