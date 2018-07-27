;  time  = {'z3': 600, 'mathsat': 83.05605840682983}
;  terms = 81
;  score = 516.9439415931702
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
(assert (fp.eq (fp.neg (fp.roundToIntegral RNE (fp.div RNE (fp.div RNE (fp.roundToIntegral RNE x2) (fp.div RNE x0 (fp.sub RNE x7 x3))) (fp.div RNE (fp.sqrt RNE x3) (fp.roundToIntegral RNE (fp.roundToIntegral RNE x3)))))) (fp.max (fp.div RNE (fp.div RNE (fp.div RNE (fp.sub RNE x4 x4) (fp.sqrt RNE x4)) (fp.mul RNE (fp.div RNE x4 x1) (fp.sub RNE x0 x4))) (fp.div RNE (fp.sub RNE (fp.max (fp.sub RNE x6 x5) (fp.div RNE x2 x1)) (fp.max (fp.min x0 x9) (fp.abs x1))) (fp.div RNE (fp.add RNE (fp.div RNE x5 x7) (fp.div RNE x5 x8)) (fp.max (fp.roundToIntegral RNE x5) (fp.neg x7))))) (fp.add RNE (fp.neg (fp.div RNE (fp.abs x7) (fp.div RNE x0 x3))) (fp.div RNE (fp.add RNE (fp.min x2 x5) (fp.abs x0)) (fp.sqrt RNE (fp.div RNE x4 x2)))))))(check-sat)