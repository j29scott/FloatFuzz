;  time  = {'mathsat': 25.189209938049316, 'z3': 600}
;  terms = 84
;  score = 574.8107900619507
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
(assert (fp.leq (fp.div RNE (fp.max (fp.div RNE (fp.neg (fp.abs x8)) (fp.neg (fp.roundToIntegral RNE x4))) (fp.div RNE (fp.sqrt RNE (fp.sqrt RNE x6)) (fp.div RNE (fp.min x1 x6) (fp.div RNE x7 x2)))) (fp.abs (fp.sqrt RNE (fp.neg (fp.add RNE x4 x1))))) (fp.min (fp.div RNE (fp.sqrt RNE (fp.neg (fp.sqrt RNE x5))) (fp.roundToIntegral RNE (fp.neg (fp.min x4 x3)))) (fp.mul RNE (fp.div RNE (fp.mul RNE (fp.div RNE x5 x9) (fp.div RNE x7 (fp.div RNE x0 x3))) (fp.div RNE (fp.abs x8) (fp.neg (fp.neg x4)))) (fp.div RNE (fp.div RNE (fp.div RNE (fp.add RNE x1 x4) (fp.div RNE x2 x6)) (fp.div RNE (fp.div RNE x7 x2) (fp.max x0 x3))) (fp.sub RNE (fp.sub RNE (fp.div RNE x0 x0) (fp.abs x8)) (fp.div RNE (fp.abs x5) (fp.min x7 x3))))))))(check-sat)