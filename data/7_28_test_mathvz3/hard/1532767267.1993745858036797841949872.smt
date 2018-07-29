;  time  = {'z3': 598.767, 'mathsat': 112.90172815322876}
;  terms = 73
;  score = 485.8652718467713
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
(assert (fp.isSubnormal (fp.add RNE (fp.add RNE (fp.sub RNE (fp.add RNE (fp.sub RNE x1 x2) (fp.sub RNE x1 x1)) (fp.abs (fp.add RNE (fp.sub RNE x7 x2) (fp.sub RNE x7 x1)))) (fp.mul RNE (fp.div RNE (fp.sqrt RNE (fp.div RNE x7 x9)) (fp.div RNE (fp.div RNE x9 x9) (fp.sqrt RNE x3))) (fp.div RNE (fp.max (fp.max x8 x0) (fp.div RNE x5 x6)) (fp.min (fp.roundToIntegral RNE x0) (fp.sub RNE x7 x8))))) (fp.div RNE (fp.add RNE (fp.sub RNE (fp.sub RNE x1 (fp.add RNE x9 x1)) (fp.roundToIntegral RNE (fp.max x8 x1))) (fp.add RNE (fp.sub RNE x7 x7) (fp.roundToIntegral RNE (fp.add RNE x2 x6)))) (fp.roundToIntegral RNE (fp.add RNE (fp.add RNE x4 x3) (fp.sub RNE x9 x8)))))))(check-sat)