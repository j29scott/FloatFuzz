;  time  = {'mathsat': 3.3206465244293213, 'z3': 600}
;  terms = 83
;  score = 596.6793534755707
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
(assert (fp.eq (fp.neg (fp.div RNE (fp.div RNE (fp.add RNE (fp.roundToIntegral RNE x3) (fp.mul RNE x5 x9)) (fp.min (fp.roundToIntegral RNE x7) (fp.div RNE x5 x4))) (fp.roundToIntegral RNE (fp.mul RNE (fp.neg x9) (fp.max x2 x0))))) (fp.div RNE (fp.mul RNE (fp.min (fp.div RNE (fp.add RNE x0 x8) (fp.min x5 x6)) (fp.div RNE (fp.div RNE x5 x4) (fp.abs x5))) (fp.neg (fp.abs (fp.max x6 x2)))) (fp.mul RNE (fp.div RNE (fp.sqrt RNE (fp.sub RNE (fp.max x6 x0) (fp.min x6 x2))) (fp.abs (fp.neg (fp.abs x6)))) (fp.mul RNE (fp.add RNE (fp.sub RNE (fp.sqrt RNE x1) (fp.neg x9)) (fp.sub RNE (fp.max x7 x7) (fp.sub RNE x9 x9))) (fp.add RNE (fp.neg (fp.max x2 x6)) (fp.min (fp.min x3 x0) (fp.abs x6))))))))(check-sat)