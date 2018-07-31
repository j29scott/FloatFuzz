;  time  = {'z3': 600}
;  terms = 65
;  score = 600
;  stdout= {'z3': 'timeout\n'}
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
(assert (fp.gt (fp.abs (fp.div RNE (fp.div RNE (fp.add RNE (fp.neg x7) (fp.div RNE x5 x2)) (fp.add RNE (fp.neg x9) (fp.abs x4))) (fp.add RNE (fp.div RNE (fp.mul RNE x0 x1) (fp.div RNE x2 (fp.abs x6))) (fp.div RNE (fp.mul RNE x3 x2) (fp.abs x9))))) (fp.div RNE (fp.sub RNE (fp.max (fp.neg (fp.div RNE x9 x1)) (fp.abs (fp.neg x5))) (fp.mul RNE (fp.abs (fp.mul RNE x9 x8)) (fp.sqrt RNE (fp.neg x1)))) (fp.min (fp.div RNE (fp.neg (fp.neg x9)) (fp.mul RNE (fp.abs x1) (fp.neg x9))) (fp.abs (fp.min (fp.abs x0) (fp.div RNE x5 x2)))))))(check-sat)