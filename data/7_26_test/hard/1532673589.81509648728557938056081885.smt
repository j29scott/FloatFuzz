;  time  = {'mathsat': 199.70094347000122, 'z3': 545.335}
;  terms = 80
;  score = 345.6340565299988
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
(assert (fp.isZero (fp.mul RNE (fp.sub RNE (fp.mul RNE (fp.add RNE (fp.mul RNE x0 x4) (fp.neg x1)) (fp.mul RNE (fp.mul RNE x8 x3) (fp.min x5 x8))) (fp.min (fp.sub RNE (fp.roundToIntegral RNE x3) (fp.add RNE x0 (fp.mul RNE x5 x3))) (fp.sub RNE (fp.mul RNE x7 x1) (fp.mul RNE x9 x8)))) (fp.sub RNE (fp.mul RNE (fp.mul RNE (fp.roundToIntegral RNE x6) (fp.sub RNE x5 x6)) (fp.sub RNE (fp.sub RNE (fp.roundToIntegral RNE x7) (fp.sub RNE x9 x0)) (fp.max (fp.max x6 x4) (fp.sqrt RNE x5)))) (fp.sub RNE (fp.add RNE (fp.add RNE (fp.sqrt RNE x6) (fp.mul RNE x1 x4)) (fp.roundToIntegral RNE (fp.max x8 x0))) (fp.div RNE (fp.div RNE (fp.min x1 x1) (fp.div RNE x1 x7)) (fp.mul RNE (fp.mul RNE x3 x9) (fp.roundToIntegral RNE x6))))))))(check-sat)