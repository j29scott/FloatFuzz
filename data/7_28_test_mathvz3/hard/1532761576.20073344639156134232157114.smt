;  time  = {'mathsat': 5.526207447052002, 'z3': 600}
;  terms = 73
;  score = 594.473792552948
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
(assert (fp.isZero (fp.div RNE (fp.div RNE (fp.sub RNE (fp.max (fp.roundToIntegral RNE x5) (fp.sub RNE x5 x0)) (fp.div RNE (fp.max x3 x5) (fp.div RNE x9 (fp.abs x5)))) (fp.abs (fp.add RNE (fp.div RNE x4 x7) (fp.roundToIntegral RNE x4)))) (fp.max (fp.div RNE (fp.div RNE (fp.abs (fp.abs x2)) (fp.mul RNE (fp.div RNE x1 x6) (fp.abs x5))) (fp.sub RNE (fp.roundToIntegral RNE (fp.abs x4)) (fp.div RNE (fp.roundToIntegral RNE x8) (fp.div RNE x4 x2)))) (fp.max (fp.mul RNE (fp.add RNE (fp.abs x6) (fp.abs x5)) (fp.sub RNE (fp.div RNE x4 x9) (fp.abs x5))) (fp.min (fp.div RNE (fp.neg x8) (fp.div RNE x2 x5)) (fp.div RNE (fp.abs x3) (fp.div RNE x4 x7))))))))(check-sat)