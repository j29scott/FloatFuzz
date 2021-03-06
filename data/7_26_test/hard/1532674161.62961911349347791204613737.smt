;  time  = {'mathsat': 5.896943092346191, 'z3': 600}
;  terms = 99
;  score = 594.1030569076538
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
(assert (fp.lt (fp.mul RNE (fp.min (fp.add RNE (fp.mul RNE (fp.mul RNE x5 x8) (fp.mul RNE x0 x2)) (fp.add RNE (fp.div RNE x3 x2) (fp.neg x8))) (fp.mul RNE (fp.roundToIntegral RNE (fp.min x2 x8)) (fp.sub RNE (fp.neg x4) (fp.mul RNE x7 (fp.min x5 x6))))) (fp.mul RNE (fp.mul RNE (fp.add RNE (fp.neg x7) (fp.neg x0)) (fp.sqrt RNE (fp.sqrt RNE x3))) (fp.mul RNE (fp.add RNE (fp.sub RNE x7 x0) (fp.neg x6)) (fp.mul RNE (fp.max (fp.div RNE x7 x9) (fp.mul RNE x3 x5)) (fp.div RNE (fp.div RNE x7 x7) (fp.abs x6)))))) (fp.div RNE (fp.sub RNE (fp.neg (fp.mul RNE (fp.mul RNE x3 (fp.mul RNE x8 x3)) (fp.max x4 x8))) (fp.mul RNE (fp.max (fp.mul RNE x5 x7) (fp.mul RNE x3 x1)) (fp.sqrt RNE (fp.sqrt RNE x9)))) (fp.add RNE (fp.abs (fp.mul RNE (fp.div RNE x3 x8) (fp.sqrt RNE x7))) (fp.abs (fp.add RNE (fp.mul RNE x7 x2) (fp.neg x1)))))))(check-sat)