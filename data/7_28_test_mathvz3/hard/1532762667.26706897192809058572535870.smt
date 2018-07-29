;  time  = {'z3': 600, 'mathsat': 10.188255071640015}
;  terms = 83
;  score = 589.81174492836
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
(assert (fp.eq (fp.roundToIntegral RNE (fp.add RNE (fp.mul RNE (fp.sqrt RNE (fp.roundToIntegral RNE x5)) (fp.div RNE (fp.sqrt RNE x2) (fp.sub RNE x2 x8))) (fp.mul RNE (fp.sub RNE (fp.mul RNE x7 x1) (fp.abs x0)) (fp.neg (fp.sqrt RNE x2))))) (fp.mul RNE (fp.sub RNE (fp.abs (fp.abs (fp.mul RNE x7 x2))) (fp.sub RNE (fp.div RNE (fp.mul RNE x0 (fp.div RNE x6 x2)) (fp.neg x0)) (fp.sqrt RNE (fp.sqrt RNE x6)))) (fp.div RNE (fp.sub RNE (fp.min (fp.min (fp.mul RNE x1 x6) (fp.neg x6)) (fp.add RNE (fp.abs x2) (fp.abs x0))) (fp.abs (fp.min (fp.roundToIntegral RNE x1) (fp.div RNE x9 x3)))) (fp.sub RNE (fp.div RNE (fp.min (fp.sub RNE x3 x4) (fp.min x5 x5)) (fp.div RNE (fp.abs x9) (fp.mul RNE x8 x5))) (fp.roundToIntegral RNE (fp.neg (fp.mul RNE x1 x5))))))))(check-sat)