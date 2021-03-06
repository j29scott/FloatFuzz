;  time  = {'z3': 548.519, 'mathsat': 145.7506685256958}
;  terms = 70
;  score = 402.7683314743042
;  stdout= {'z3': 'sat\n', 'mathsat': 'sat'}
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
(assert (fp.isZero (fp.sub RNE (fp.add RNE (fp.sqrt RNE (fp.mul RNE (fp.max x2 x2) (fp.mul RNE (fp.abs x6) (fp.max x0 x8)))) (fp.div RNE (fp.div RNE (fp.div RNE (fp.add RNE x0 x5) (fp.max x0 x2)) (fp.sub RNE (fp.mul RNE x9 x9) (fp.max x6 x8))) (fp.sqrt RNE (fp.add RNE (fp.max x8 x0) (fp.mul RNE x2 x4))))) (fp.max (fp.abs (fp.mul RNE (fp.sqrt RNE x1) (fp.add RNE (fp.sqrt RNE x7) (fp.add RNE x0 x1)))) (fp.add RNE (fp.div RNE (fp.div RNE (fp.sqrt RNE x3) (fp.div RNE x9 x0)) (fp.div RNE (fp.sub RNE x2 x8) (fp.add RNE x7 x4))) (fp.sqrt RNE (fp.sub RNE (fp.sqrt RNE x1) (fp.abs x0))))))))(check-sat)