;  time  = {'z3': 600, 'mathsat': 11.668671607971191}
;  terms = 95
;  score = 588.3313283920288
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
(assert (fp.leq (fp.neg (fp.div RNE (fp.div RNE (fp.sqrt RNE (fp.neg x2)) (fp.max (fp.div RNE x6 x3) (fp.add RNE (fp.neg x2) (fp.add RNE x6 x3)))) (fp.mul RNE (fp.sqrt RNE (fp.div RNE (fp.sqrt RNE x9) (fp.max x1 x7))) (fp.max (fp.sub RNE (fp.min x2 x8) (fp.div RNE x8 x9)) (fp.sub RNE (fp.div RNE x2 x6) (fp.div RNE x7 x1)))))) (fp.div RNE (fp.sqrt RNE (fp.sqrt RNE (fp.div RNE (fp.mul RNE x4 x0) (fp.max (fp.div RNE x4 x8) (fp.sqrt RNE x2))))) (fp.div RNE (fp.div RNE (fp.max (fp.max (fp.max x9 x6) (fp.div RNE x5 x7)) (fp.sqrt RNE (fp.div RNE x6 x1))) (fp.div RNE (fp.mul RNE (fp.sqrt RNE x0) (fp.sub RNE x1 x8)) (fp.div RNE (fp.add RNE x4 x8) (fp.sqrt RNE x7)))) (fp.abs (fp.div RNE (fp.max (fp.max x6 x8) (fp.sqrt RNE x3)) (fp.add RNE (fp.div RNE x6 x6) (fp.max x6 x9))))))))(check-sat)