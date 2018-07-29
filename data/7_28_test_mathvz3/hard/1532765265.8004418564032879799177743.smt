;  time  = {'mathsat': 28.451624631881714, 'z3': 600}
;  terms = 98
;  score = 571.5483753681183
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
(assert (fp.gt (fp.div RNE (fp.mul RNE (fp.roundToIntegral RNE (fp.min (fp.div RNE x0 x3) (fp.sub RNE x9 x7))) (fp.div RNE (fp.roundToIntegral RNE (fp.mul RNE x8 x7)) (fp.mul RNE (fp.add RNE x2 x3) (fp.max x5 x7)))) (fp.neg (fp.div RNE (fp.abs (fp.min x9 x6)) (fp.max (fp.sqrt RNE x9) (fp.abs x4))))) (fp.div RNE (fp.div RNE (fp.sub RNE (fp.sqrt RNE (fp.mul RNE x3 x7)) (fp.min (fp.div RNE x0 x9) (fp.max x4 x7))) (fp.div RNE (fp.add RNE (fp.mul RNE (fp.min x1 x5) (fp.add RNE x6 x3)) (fp.sub RNE (fp.sub RNE x7 x3) (fp.div RNE x0 x3))) (fp.sub RNE (fp.abs (fp.abs x4)) (fp.min (fp.min x4 x1) (fp.div RNE x8 x5))))) (fp.min (fp.sqrt RNE (fp.sub RNE (fp.max x2 x6) (fp.roundToIntegral RNE (fp.sub RNE x1 x5)))) (fp.mul RNE (fp.min (fp.add RNE x3 x5) (fp.abs x0)) (fp.add RNE (fp.sub RNE x0 x0) (fp.neg x0)))))))(check-sat)