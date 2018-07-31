;  time  = {'z3': 600, 'mathsat': 74.92287063598633}
;  terms = 89
;  score = 525.0771293640137
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
(assert (fp.eq (fp.min (fp.mul RNE (fp.div RNE (fp.abs (fp.mul RNE x8 (fp.sqrt RNE x8))) (fp.roundToIntegral RNE (fp.mul RNE x4 x6))) (fp.mul RNE (fp.div RNE (fp.add RNE (fp.mul RNE x0 x9) (fp.sqrt RNE x5)) (fp.add RNE (fp.min x9 x5) (fp.max x0 x5))) (fp.roundToIntegral RNE (fp.abs (fp.roundToIntegral RNE x2))))) (fp.mul RNE (fp.roundToIntegral RNE (fp.abs (fp.sqrt RNE x5))) (fp.div RNE (fp.add RNE (fp.div RNE (fp.mul RNE x0 x3) (fp.sqrt RNE x6)) (fp.mul RNE (fp.mul RNE x0 x5) (fp.mul RNE x6 x2))) (fp.neg (fp.min (fp.mul RNE x5 x3) (fp.roundToIntegral RNE x6)))))) (fp.mul RNE (fp.mul RNE (fp.sqrt RNE (fp.div RNE (fp.div RNE x7 x8) (fp.add RNE x2 x3))) (fp.roundToIntegral RNE (fp.div RNE (fp.min x4 x2) (fp.neg x9)))) (fp.roundToIntegral RNE (fp.mul RNE (fp.add RNE (fp.mul RNE x6 x6) (fp.min x8 x8)) (fp.sqrt RNE (fp.sub RNE x5 x1)))))))(check-sat)