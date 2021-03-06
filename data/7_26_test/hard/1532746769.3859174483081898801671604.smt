;  time  = {'mathsat': 14.736132144927979, 'z3': 600}
;  terms = 116
;  score = 585.263867855072
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
(assert (fp.leq (fp.div RNE (fp.div RNE (fp.max (fp.max (fp.sub RNE x6 x7) (fp.sub RNE x0 x8)) (fp.abs (fp.sub RNE x8 x3))) (fp.div RNE (fp.div RNE (fp.neg x1) (fp.div RNE x2 x2)) (fp.sqrt RNE (fp.roundToIntegral RNE (fp.max x3 x3))))) (fp.add RNE (fp.div RNE (fp.sqrt RNE (fp.div RNE x5 x8)) (fp.mul RNE (fp.add RNE (fp.add RNE x9 x2) (fp.roundToIntegral RNE x9)) (fp.sqrt RNE (fp.add RNE x7 x6)))) (fp.mul RNE (fp.div RNE (fp.add RNE x9 x2) (fp.add RNE (fp.sub RNE x0 x7) (fp.mul RNE x8 x8))) (fp.div RNE (fp.sub RNE x5 x8) (fp.mul RNE (fp.abs x0) (fp.neg x3)))))) (fp.div RNE (fp.roundToIntegral RNE (fp.max (fp.mul RNE (fp.div RNE x8 x0) (fp.sqrt RNE x1)) (fp.sub RNE (fp.min x9 x5) (fp.div RNE x1 (fp.div RNE x3 x7))))) (fp.min (fp.abs (fp.add RNE (fp.roundToIntegral RNE (fp.max x1 x6)) (fp.sub RNE (fp.add RNE x8 x5) (fp.mul RNE x3 x1)))) (fp.div RNE (fp.abs (fp.mul RNE (fp.sqrt RNE x0) (fp.mul RNE x0 x4))) (fp.mul RNE (fp.abs (fp.abs x9)) (fp.sub RNE (fp.max x3 x0) (fp.div RNE x8 x4))))))))(check-sat)