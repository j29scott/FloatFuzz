;  time  = {'z3': 567.08, 'mathsat': 121.83199286460876}
;  terms = 55
;  score = 445.2480071353913
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
(assert (fp.isZero (fp.sub RNE (fp.sub RNE (fp.mul RNE (fp.sub RNE (fp.abs x4) (fp.mul RNE x1 x5)) (fp.mul RNE (fp.abs x7) (fp.abs x9))) (fp.sub RNE (fp.abs (fp.abs x6)) (fp.add RNE (fp.sqrt RNE x7) (fp.mul RNE x6 (fp.abs x7))))) (fp.add RNE (fp.mul RNE (fp.max (fp.abs x7) (fp.add RNE x3 (fp.mul RNE x9 x2))) (fp.add RNE (fp.abs x3) (fp.sub RNE x1 x4))) (fp.div RNE (fp.add RNE (fp.div RNE x2 x7) (fp.add RNE x8 (fp.div RNE x1 x4))) (fp.abs (fp.abs x1)))))))(check-sat)