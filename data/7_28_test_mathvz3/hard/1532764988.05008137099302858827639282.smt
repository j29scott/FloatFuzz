;  time  = {'z3': 567.481, 'mathsat': 26.654359817504883}
;  terms = 98
;  score = 540.8266401824951
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
(assert (fp.gt (fp.mul RNE (fp.mul RNE (fp.roundToIntegral RNE (fp.sqrt RNE (fp.sqrt RNE x8))) (fp.add RNE (fp.add RNE (fp.min (fp.min x3 x1) (fp.sqrt RNE x6)) (fp.min (fp.mul RNE x4 x1) (fp.sub RNE x8 x2))) (fp.min (fp.add RNE (fp.min x0 x0) (fp.roundToIntegral RNE x9)) (fp.max (fp.max x7 x7) (fp.add RNE x5 x3))))) (fp.add RNE (fp.div RNE (fp.sub RNE (fp.min x1 (fp.mul RNE x2 x5)) (fp.neg x0)) (fp.min (fp.sqrt RNE x3) (fp.sqrt RNE x5))) (fp.div RNE (fp.div RNE (fp.add RNE x5 x6) (fp.min x2 x8)) (fp.sub RNE (fp.add RNE x8 (fp.mul RNE x7 x3)) (fp.min x1 x6))))) (fp.neg (fp.mul RNE (fp.add RNE (fp.sub RNE (fp.min x9 x7) (fp.max x7 x4)) (fp.div RNE (fp.div RNE x8 x9) (fp.mul RNE x2 x6))) (fp.sub RNE (fp.div RNE (fp.div RNE x9 x1) (fp.abs x6)) (fp.mul RNE (fp.add RNE x8 x7) (fp.neg x9)))))))(check-sat)