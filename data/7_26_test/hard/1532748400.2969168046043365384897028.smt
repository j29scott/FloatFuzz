;  time  = {'z3': 600, 'mathsat': 16.42490577697754}
;  terms = 113
;  score = 583.5750942230225
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
(assert (fp.gt (fp.sub RNE (fp.div RNE (fp.div RNE (fp.div RNE (fp.max x4 x2) (fp.roundToIntegral RNE x0)) (fp.div RNE (fp.sqrt RNE (fp.sqrt RNE x1)) (fp.sqrt RNE (fp.div RNE x7 x9)))) (fp.div RNE (fp.sqrt RNE (fp.min x9 x0)) (fp.abs (fp.div RNE (fp.neg x0) (fp.sub RNE x2 x4))))) (fp.min (fp.abs (fp.div RNE (fp.abs x4) (fp.sqrt RNE (fp.div RNE x9 x8)))) (fp.sub RNE (fp.add RNE (fp.roundToIntegral RNE x2) (fp.abs x3)) (fp.mul RNE (fp.abs x6) (fp.sub RNE x3 x9))))) (fp.sub RNE (fp.div RNE (fp.min (fp.abs (fp.div RNE x1 (fp.abs x7))) (fp.sub RNE (fp.neg x1) (fp.div RNE x7 x8))) (fp.add RNE (fp.div RNE (fp.roundToIntegral RNE x4) (fp.mul RNE x6 x9)) (fp.sqrt RNE (fp.min x7 x6)))) (fp.max (fp.sub RNE (fp.add RNE (fp.div RNE x0 x3) (fp.div RNE x0 (fp.min x5 x4))) (fp.sqrt RNE (fp.div RNE x1 x8))) (fp.div RNE (fp.div RNE (fp.div RNE x7 (fp.div RNE x2 x5)) (fp.div RNE x7 x1)) (fp.mul RNE (fp.roundToIntegral RNE (fp.max x2 x2)) (fp.div RNE (fp.div RNE x2 x9) (fp.max x1 x4))))))))(check-sat)