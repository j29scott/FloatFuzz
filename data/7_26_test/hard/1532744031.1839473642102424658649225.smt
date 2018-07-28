;  time  = {'mathsat': 188.70878529548645, 'z3': 600}
;  terms = 104
;  score = 411.29121470451355
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
(assert (fp.eq (fp.sub RNE (fp.add RNE (fp.add RNE (fp.sqrt RNE (fp.add RNE x3 x7)) (fp.div RNE (fp.sqrt RNE (fp.sub RNE x5 x9)) (fp.neg (fp.sqrt RNE x9)))) (fp.div RNE (fp.min (fp.min (fp.add RNE x5 x8) (fp.mul RNE x1 x2)) (fp.min (fp.add RNE x1 x2) (fp.roundToIntegral RNE x8))) (fp.sqrt RNE (fp.min (fp.add RNE x5 x5) (fp.min x3 x0))))) (fp.sub RNE (fp.sqrt RNE (fp.add RNE (fp.div RNE x6 x3) (fp.abs (fp.add RNE x3 x7)))) (fp.min (fp.add RNE (fp.add RNE x7 x3) (fp.max (fp.neg x7) (fp.min x6 x7))) (fp.neg (fp.add RNE x5 x8))))) (fp.add RNE (fp.add RNE (fp.sqrt RNE (fp.neg (fp.add RNE x6 (fp.div RNE x9 x1)))) (fp.add RNE (fp.abs (fp.neg x9)) (fp.mul RNE (fp.sub RNE (fp.add RNE x6 x6) (fp.add RNE x5 x2)) (fp.sub RNE (fp.neg x1) (fp.div RNE x2 x8))))) (fp.abs (fp.roundToIntegral RNE (fp.div RNE (fp.mul RNE (fp.div RNE x2 x4) (fp.min x1 x6)) (fp.sqrt RNE (fp.sqrt RNE x0))))))))(check-sat)