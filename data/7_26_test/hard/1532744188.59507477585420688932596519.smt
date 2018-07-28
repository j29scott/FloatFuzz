;  time  = {'z3': 600, 'mathsat': 13.063427686691284}
;  terms = 77
;  score = 586.9365723133087
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
(assert (fp.isNormal (fp.div RNE (fp.div RNE (fp.mul RNE (fp.add RNE (fp.add RNE x7 (fp.add RNE x2 x8)) (fp.add RNE (fp.div RNE x8 x4) (fp.min x8 x2))) (fp.add RNE (fp.max x3 x5) (fp.add RNE (fp.sub RNE x1 x9) (fp.div RNE x2 x7)))) (fp.neg (fp.div RNE (fp.add RNE x8 x8) (fp.add RNE x0 (fp.add RNE x1 x5))))) (fp.mul RNE (fp.add RNE (fp.div RNE (fp.add RNE (fp.mul RNE x0 x9) (fp.roundToIntegral RNE x6)) (fp.sub RNE (fp.mul RNE x7 x4) (fp.min x7 x9))) (fp.div RNE (fp.div RNE (fp.add RNE x5 x2) (fp.neg x9)) (fp.div RNE (fp.div RNE x8 x0) (fp.min x2 x3)))) (fp.roundToIntegral RNE (fp.add RNE (fp.sqrt RNE (fp.neg x6)) (fp.neg (fp.add RNE x6 x4))))))))(check-sat)