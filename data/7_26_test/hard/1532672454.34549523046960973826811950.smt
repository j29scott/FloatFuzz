;  time  = {'z3': 600, 'mathsat': 41.87917137145996}
;  terms = 106
;  score = 558.12082862854
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
(assert (fp.eq (fp.sqrt RNE (fp.div RNE (fp.add RNE (fp.add RNE (fp.add RNE x6 (fp.add RNE x9 x4)) (fp.neg x8)) (fp.roundToIntegral RNE (fp.sqrt RNE (fp.mul RNE x2 x6)))) (fp.add RNE (fp.max (fp.mul RNE (fp.neg x3) (fp.sqrt RNE x9)) (fp.sqrt RNE (fp.div RNE x2 x3))) (fp.sqrt RNE (fp.sqrt RNE (fp.neg x1)))))) (fp.mul RNE (fp.div RNE (fp.div RNE (fp.add RNE (fp.add RNE x1 x0) (fp.div RNE x5 x6)) (fp.div RNE (fp.abs (fp.div RNE x9 x5)) (fp.add RNE (fp.add RNE x9 x8) (fp.add RNE x6 x0)))) (fp.mul RNE (fp.mul RNE (fp.add RNE x4 (fp.div RNE x2 x1)) (fp.sub RNE x1 x2)) (fp.abs (fp.mul RNE x4 (fp.neg x0))))) (fp.add RNE (fp.min (fp.div RNE (fp.sub RNE x3 x7) (fp.add RNE x1 (fp.mul RNE x4 x1))) (fp.div RNE (fp.div RNE x5 x6) (fp.div RNE x0 (fp.roundToIntegral RNE x9)))) (fp.sub RNE (fp.max (fp.max (fp.roundToIntegral RNE x4) (fp.div RNE x9 x7)) (fp.max (fp.sub RNE x9 x8) (fp.neg x5))) (fp.roundToIntegral RNE (fp.sqrt RNE (fp.abs x5))))))))(check-sat)