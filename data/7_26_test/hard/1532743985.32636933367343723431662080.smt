;  time  = {'mathsat': 26.22389245033264, 'z3': 563.421}
;  terms = 83
;  score = 537.1971075496674
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
(assert (fp.isNormal (fp.div RNE (fp.add RNE (fp.div RNE (fp.add RNE (fp.mul RNE x7 (fp.mul RNE x5 x7)) (fp.add RNE x3 x7)) (fp.sqrt RNE (fp.add RNE x0 x6))) (fp.add RNE (fp.add RNE (fp.add RNE (fp.mul RNE x4 x8) (fp.sqrt RNE x4)) (fp.add RNE (fp.add RNE x6 x6) (fp.sqrt RNE x0))) (fp.add RNE (fp.max (fp.add RNE x2 x4) (fp.sqrt RNE x3)) (fp.sub RNE (fp.sqrt RNE x7) (fp.mul RNE x2 x0))))) (fp.mul RNE (fp.add RNE (fp.mul RNE (fp.mul RNE x7 x9) (fp.add RNE x0 x1)) (fp.mul RNE (fp.add RNE x6 (fp.mul RNE x1 x7)) (fp.mul RNE (fp.sub RNE x4 x1) (fp.min x9 x4)))) (fp.add RNE (fp.mul RNE (fp.add RNE x4 (fp.min x0 x3)) (fp.abs (fp.mul RNE x0 x8))) (fp.abs (fp.mul RNE x7 (fp.add RNE x7 x8))))))))(check-sat)