;  time  = {'z3': 600, 'mathsat': 37.19117617607117}
;  terms = 68
;  score = 562.8088238239288
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
(assert (fp.isZero (fp.div RNE (fp.div RNE (fp.div RNE (fp.max (fp.div RNE x9 x4) (fp.sqrt RNE x8)) (fp.neg (fp.mul RNE x4 x3))) (fp.min (fp.min (fp.abs (fp.div RNE x9 x5)) (fp.div RNE (fp.sub RNE x7 x0) (fp.add RNE x9 x8))) (fp.sqrt RNE (fp.sqrt RNE (fp.div RNE x6 x2))))) (fp.div RNE (fp.min (fp.div RNE (fp.mul RNE x8 x5) (fp.div RNE x9 x6)) (fp.div RNE (fp.div RNE x1 x7) (fp.div RNE x8 x9))) (fp.div RNE (fp.div RNE (fp.div RNE (fp.add RNE x6 x0) (fp.div RNE x8 x4)) (fp.abs (fp.div RNE x1 x0))) (fp.roundToIntegral RNE (fp.div RNE (fp.roundToIntegral RNE x6) (fp.div RNE x9 x3))))))))(check-sat)