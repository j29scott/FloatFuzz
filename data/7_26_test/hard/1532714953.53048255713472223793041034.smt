;  time  = {'z3': 600, 'mathsat': 120.44307231903076}
;  terms = 83
;  score = 479.55692768096924
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
(assert (fp.eq (fp.add RNE (fp.sub RNE (fp.mul RNE (fp.min (fp.div RNE x0 x9) (fp.max x6 x7)) (fp.sqrt RNE (fp.sqrt RNE x5))) (fp.sqrt RNE (fp.max (fp.sqrt RNE x6) (fp.add RNE x8 x4)))) (fp.div RNE (fp.roundToIntegral RNE (fp.mul RNE (fp.abs x3) (fp.abs x2))) (fp.div RNE (fp.neg (fp.div RNE (fp.max x5 x8) (fp.sqrt RNE x3))) (fp.div RNE (fp.neg (fp.div RNE x4 x6)) (fp.sub RNE (fp.sqrt RNE x9) (fp.div RNE x1 x2)))))) (fp.div RNE (fp.sub RNE (fp.min (fp.roundToIntegral RNE (fp.mul RNE x8 x0)) (fp.div RNE (fp.sqrt RNE x2) (fp.max x6 x0))) (fp.max (fp.sqrt RNE (fp.neg x6)) (fp.neg (fp.min x8 x1)))) (fp.abs (fp.sub RNE (fp.sub RNE (fp.add RNE x5 x8) (fp.add RNE x5 x2)) (fp.div RNE (fp.div RNE x2 x9) (fp.roundToIntegral RNE x2)))))))(check-sat)