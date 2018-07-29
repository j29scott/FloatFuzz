;  time  = {'z3': 600, 'mathsat': 7.0753021240234375}
;  terms = 78
;  score = 592.9246978759766
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
(assert (fp.isNaN (fp.div RNE (fp.div RNE (fp.mul RNE (fp.div RNE (fp.div RNE x1 x3) (fp.div RNE (fp.roundToIntegral RNE x6) (fp.min x2 x2))) (fp.min (fp.div RNE x9 x3) (fp.sub RNE x5 x9))) (fp.mul RNE (fp.div RNE (fp.div RNE x4 x2) (fp.sqrt RNE x4)) (fp.max (fp.roundToIntegral RNE x2) (fp.mul RNE (fp.max x8 x9) (fp.max x4 x5))))) (fp.add RNE (fp.min (fp.sqrt RNE (fp.div RNE (fp.sqrt RNE x1) (fp.min x8 x1))) (fp.div RNE (fp.min (fp.max x3 x3) (fp.add RNE x0 x2)) (fp.div RNE (fp.roundToIntegral RNE x5) (fp.roundToIntegral RNE x7)))) (fp.min (fp.div RNE (fp.min (fp.div RNE x3 x1) (fp.sqrt RNE x0)) (fp.roundToIntegral RNE (fp.div RNE x6 x5))) (fp.sqrt RNE (fp.max (fp.sqrt RNE x2) (fp.roundToIntegral RNE x7))))))))(check-sat)