;  time  = {'z3': 600, 'mathsat': 289.45123744010925}
;  terms = 80
;  score = 310.54876255989075
;  stdout= {'z3': 'timeout\n', 'mathsat': 'sat'}
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
(assert (fp.eq (fp.sub RNE (fp.abs (fp.div RNE (fp.mul RNE (fp.neg x5) (fp.add RNE x5 x7)) (fp.add RNE (fp.add RNE x9 x4) (fp.add RNE (fp.mul RNE x4 x9) (fp.roundToIntegral RNE x4))))) (fp.abs (fp.neg (fp.div RNE (fp.mul RNE x4 x9) (fp.abs x2))))) (fp.div RNE (fp.max (fp.sqrt RNE (fp.add RNE (fp.add RNE x5 x7) (fp.abs (fp.add RNE x0 x9)))) (fp.mul RNE (fp.roundToIntegral RNE (fp.neg x6)) (fp.add RNE (fp.add RNE x4 (fp.mul RNE x8 x2)) (fp.add RNE x6 x7)))) (fp.add RNE (fp.div RNE (fp.max (fp.neg x3) (fp.add RNE x3 x8)) (fp.max (fp.abs x7) (fp.sub RNE x0 x1))) (fp.max (fp.sub RNE (fp.add RNE x8 x2) (fp.neg x2)) (fp.div RNE (fp.add RNE x3 x5) (fp.max x0 x6)))))))(check-sat)