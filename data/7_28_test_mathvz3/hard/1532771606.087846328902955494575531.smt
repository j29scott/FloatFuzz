;  time  = {'z3': 600, 'mathsat': 99.35783624649048}
;  terms = 102
;  score = 500.6421637535095
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
(assert (fp.eq (fp.sqrt RNE (fp.div RNE (fp.min (fp.min (fp.sqrt RNE x0) (fp.mul RNE x9 (fp.sub RNE x5 x3))) (fp.roundToIntegral RNE (fp.sqrt RNE x5))) (fp.min (fp.min (fp.div RNE (fp.max x8 x3) (fp.max x6 x8)) (fp.div RNE (fp.max x0 x3) (fp.max x1 x0))) (fp.sub RNE (fp.div RNE (fp.max x2 x8) (fp.max x4 x4)) (fp.max (fp.max x8 x4) (fp.sqrt RNE x6)))))) (fp.min (fp.sqrt RNE (fp.div RNE (fp.div RNE (fp.neg x4) (fp.mul RNE x8 (fp.add RNE x5 x1))) (fp.max (fp.div RNE (fp.min x8 x4) (fp.max x2 x1)) (fp.min (fp.sqrt RNE x0) (fp.sqrt RNE x7))))) (fp.mul RNE (fp.sqrt RNE (fp.min (fp.max x1 x1) (fp.div RNE x6 x1))) (fp.div RNE (fp.div RNE (fp.abs (fp.abs x6)) (fp.roundToIntegral RNE (fp.max x3 x7))) (fp.max (fp.div RNE (fp.mul RNE x1 x2) (fp.mul RNE x1 x9)) (fp.mul RNE (fp.max x5 x9) (fp.min x8 x1))))))))(check-sat)