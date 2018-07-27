;  time  = {'z3': 600, 'mathsat': 35.07353234291077}
;  terms = 90
;  score = 564.9264676570892
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
(assert (fp.eq (fp.abs (fp.sub RNE (fp.mul RNE (fp.sub RNE (fp.mul RNE x2 (fp.div RNE x9 x8)) (fp.min x6 x4)) (fp.min (fp.div RNE x1 x5) (fp.min x3 x3))) (fp.div RNE (fp.mul RNE (fp.mul RNE (fp.sub RNE x1 x4) (fp.div RNE x3 x7)) (fp.div RNE (fp.div RNE x8 x7) (fp.max x5 x8))) (fp.add RNE (fp.mul RNE (fp.div RNE x7 x9) (fp.div RNE x9 x9)) (fp.mul RNE (fp.div RNE x2 x4) (fp.mul RNE x9 x9)))))) (fp.abs (fp.div RNE (fp.mul RNE (fp.sub RNE (fp.div RNE x7 x7) (fp.sub RNE (fp.max x1 x2) (fp.sub RNE x3 x5))) (fp.mul RNE (fp.mul RNE x4 x0) (fp.sub RNE x2 x7))) (fp.mul RNE (fp.div RNE (fp.div RNE x7 (fp.mul RNE x4 x7)) (fp.div RNE x5 x6)) (fp.sub RNE (fp.mul RNE x3 x7) (fp.roundToIntegral RNE (fp.mul RNE x7 x7))))))))(check-sat)