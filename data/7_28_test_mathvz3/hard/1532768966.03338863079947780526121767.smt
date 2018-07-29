;  time  = {'mathsat': 27.735047101974487, 'z3': 577.404}
;  terms = 75
;  score = 549.6689528980255
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
(assert (fp.isNormal (fp.div RNE (fp.add RNE (fp.mul RNE (fp.sub RNE (fp.add RNE x5 x9) (fp.mul RNE x3 x6)) (fp.mul RNE (fp.min x2 x9) (fp.sub RNE x3 x9))) (fp.div RNE (fp.sub RNE (fp.mul RNE (fp.mul RNE x5 x2) (fp.sqrt RNE x3)) (fp.add RNE (fp.add RNE x3 x3) (fp.sqrt RNE x1))) (fp.div RNE (fp.mul RNE (fp.mul RNE x0 x2) (fp.mul RNE x7 x9)) (fp.div RNE (fp.mul RNE x2 x9) (fp.mul RNE x1 x6))))) (fp.abs (fp.sub RNE (fp.sub RNE (fp.neg (fp.neg x2)) (fp.sub RNE (fp.mul RNE x5 x9) (fp.add RNE x7 x1))) (fp.sub RNE (fp.sub RNE (fp.add RNE x1 x9) (fp.sub RNE x4 x1)) (fp.mul RNE (fp.sub RNE x0 x4) (fp.sub RNE x4 x2))))))))(check-sat)