;  time  = {'mathsat': 12.429404973983765, 'z3': 600}
;  terms = 101
;  score = 587.5705950260162
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
(assert (fp.lt (fp.add RNE (fp.min (fp.neg (fp.min (fp.add RNE x7 (fp.neg x9)) (fp.sqrt RNE x0))) (fp.roundToIntegral RNE (fp.div RNE (fp.div RNE x2 x7) (fp.div RNE (fp.min x2 x3) (fp.sub RNE x8 x4))))) (fp.div RNE (fp.div RNE (fp.div RNE (fp.add RNE x5 x8) (fp.mul RNE x4 x6)) (fp.abs (fp.mul RNE x0 x7))) (fp.div RNE (fp.min (fp.min x8 x5) (fp.add RNE x4 (fp.min x7 x9))) (fp.min (fp.div RNE x2 x9) (fp.sqrt RNE x2))))) (fp.div RNE (fp.div RNE (fp.div RNE (fp.abs (fp.sub RNE x6 (fp.add RNE x5 x3))) (fp.div RNE (fp.div RNE x9 (fp.min x1 x1)) (fp.min x8 x1))) (fp.min (fp.roundToIntegral RNE (fp.div RNE x8 x3)) (fp.add RNE (fp.div RNE x4 x3) (fp.add RNE x7 x3)))) (fp.sqrt RNE (fp.div RNE (fp.div RNE (fp.add RNE x4 (fp.div RNE x1 x7)) (fp.add RNE x8 (fp.div RNE x3 x7))) (fp.sqrt RNE (fp.sub RNE x3 (fp.div RNE x0 x9))))))))(check-sat)