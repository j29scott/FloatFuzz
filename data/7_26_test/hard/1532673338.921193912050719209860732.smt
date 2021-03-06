;  time  = {'mathsat': 4.182660341262817, 'z3': 577.313}
;  terms = 88
;  score = 573.1303396587372
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
(assert (fp.gt (fp.div RNE (fp.div RNE (fp.roundToIntegral RNE (fp.sqrt RNE (fp.mul RNE x9 x7))) (fp.sub RNE (fp.div RNE (fp.sub RNE x6 x6) (fp.add RNE x5 x1)) (fp.mul RNE (fp.mul RNE x4 x6) (fp.mul RNE x2 x5)))) (fp.sub RNE (fp.mul RNE (fp.sub RNE (fp.neg x8) (fp.div RNE (fp.roundToIntegral RNE x2) (fp.div RNE x8 x3))) (fp.mul RNE (fp.sqrt RNE x3) (fp.sub RNE x7 x5))) (fp.sub RNE (fp.mul RNE (fp.sub RNE x2 (fp.max x4 x1)) (fp.mul RNE x3 x2)) (fp.add RNE (fp.neg x8) (fp.div RNE x6 x1))))) (fp.min (fp.sqrt RNE (fp.roundToIntegral RNE (fp.mul RNE (fp.abs x3) (fp.sqrt RNE x6)))) (fp.sub RNE (fp.sub RNE (fp.sub RNE (fp.roundToIntegral RNE x5) (fp.mul RNE x6 x4)) (fp.sub RNE (fp.min x3 x6) (fp.div RNE (fp.neg x8) (fp.neg x0)))) (fp.roundToIntegral RNE (fp.sub RNE (fp.mul RNE x4 x8) (fp.abs x4)))))))(check-sat)