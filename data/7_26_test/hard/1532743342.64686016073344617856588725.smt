;  time  = {'mathsat': 9.413478136062622, 'z3': 564.632}
;  terms = 94
;  score = 555.2185218639373
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
(assert (fp.eq (fp.abs (fp.sqrt RNE (fp.add RNE (fp.add RNE (fp.mul RNE x9 x7) (fp.abs x4)) (fp.add RNE (fp.add RNE x3 (fp.add RNE x9 x7)) (fp.abs x0))))) (fp.add RNE (fp.div RNE (fp.roundToIntegral RNE (fp.sub RNE (fp.div RNE x6 x6) (fp.roundToIntegral RNE x3))) (fp.add RNE (fp.mul RNE (fp.abs x9) (fp.div RNE x9 x4)) (fp.neg (fp.add RNE (fp.add RNE x2 x2) (fp.abs x7))))) (fp.div RNE (fp.add RNE (fp.sub RNE (fp.add RNE (fp.div RNE x7 x4) (fp.sqrt RNE x9)) (fp.min (fp.min x4 x4) (fp.neg x7))) (fp.mul RNE (fp.neg (fp.max x0 x1)) (fp.sub RNE (fp.sqrt RNE x2) (fp.sqrt RNE x9)))) (fp.add RNE (fp.add RNE (fp.sub RNE (fp.abs x0) (fp.add RNE x9 x2)) (fp.add RNE (fp.add RNE x6 x9) (fp.sqrt RNE x4))) (fp.add RNE (fp.max (fp.abs x0) (fp.sub RNE x2 x4)) (fp.div RNE (fp.add RNE x8 x6) (fp.mul RNE x2 x7))))))))(check-sat)