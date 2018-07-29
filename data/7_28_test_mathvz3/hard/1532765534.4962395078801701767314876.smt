;  time  = {'z3': 600, 'mathsat': 47.059508085250854}
;  terms = 61
;  score = 552.9404919147491
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
(assert (fp.gt (fp.roundToIntegral RNE (fp.sqrt RNE (fp.min (fp.sqrt RNE (fp.div RNE x1 x8)) (fp.sqrt RNE (fp.sqrt RNE x6))))) (fp.div RNE (fp.sqrt RNE (fp.min (fp.div RNE (fp.mul RNE x0 x7) (fp.mul RNE x8 x3)) (fp.sqrt RNE (fp.roundToIntegral RNE x7)))) (fp.sub RNE (fp.div RNE (fp.max (fp.sqrt RNE x5) (fp.max (fp.sqrt RNE x5) (fp.neg x4))) (fp.add RNE (fp.max (fp.sqrt RNE x6) (fp.sqrt RNE x4)) (fp.sqrt RNE (fp.div RNE x9 x2)))) (fp.div RNE (fp.div RNE (fp.roundToIntegral RNE x2) (fp.max x3 (fp.add RNE x5 x7))) (fp.mul RNE (fp.sqrt RNE (fp.mul RNE x1 x9)) (fp.abs (fp.sqrt RNE x2))))))))(check-sat)