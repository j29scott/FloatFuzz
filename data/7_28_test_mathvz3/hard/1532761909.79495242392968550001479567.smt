;  time  = {'z3': 600, 'mathsat': 22.927719593048096}
;  terms = 107
;  score = 577.0722804069519
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
(assert (fp.lt (fp.mul RNE (fp.div RNE (fp.min (fp.mul RNE (fp.neg x4) (fp.mul RNE (fp.div RNE x0 x2) (fp.sqrt RNE x5))) (fp.neg (fp.div RNE x8 x4))) (fp.mul RNE (fp.min (fp.roundToIntegral RNE x7) (fp.min (fp.abs x7) (fp.div RNE x6 x1))) (fp.sub RNE (fp.div RNE (fp.add RNE x8 x7) (fp.neg x5)) (fp.mul RNE (fp.div RNE x8 x8) (fp.div RNE x9 x0))))) (fp.min (fp.mul RNE (fp.max (fp.mul RNE x0 x1) (fp.sqrt RNE x0)) (fp.abs (fp.max x2 x1))) (fp.sqrt RNE (fp.min (fp.abs x4) (fp.max (fp.max x4 x8) (fp.max x1 x7)))))) (fp.div RNE (fp.abs (fp.min (fp.abs (fp.div RNE x8 x7)) (fp.sub RNE (fp.add RNE (fp.div RNE x3 x1) (fp.div RNE x5 x3)) (fp.abs (fp.roundToIntegral RNE x0))))) (fp.sub RNE (fp.div RNE (fp.div RNE (fp.min x9 (fp.sqrt RNE x2)) (fp.sub RNE (fp.mul RNE x9 x9) (fp.abs x1))) (fp.neg (fp.mul RNE (fp.max x6 x5) (fp.div RNE x6 x7)))) (fp.abs (fp.roundToIntegral RNE (fp.abs x0)))))))(check-sat)