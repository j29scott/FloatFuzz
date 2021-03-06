;  time  = {'mathsat': 5.729459524154663, 'z3': 600}
;  terms = 103
;  score = 594.2705404758453
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
(assert (fp.isNaN (fp.max (fp.mul RNE (fp.max (fp.div RNE (fp.sub RNE x7 x2) (fp.min (fp.sub RNE x0 x5) (fp.sub RNE x8 x7))) (fp.mul RNE (fp.sub RNE x2 (fp.sqrt RNE x1)) (fp.roundToIntegral RNE (fp.sqrt RNE x0)))) (fp.sub RNE (fp.div RNE (fp.div RNE (fp.sub RNE x2 x9) (fp.sub RNE x3 x9)) (fp.neg (fp.sub RNE x3 x4))) (fp.div RNE (fp.sub RNE (fp.sub RNE x2 x3) (fp.max x7 x2)) (fp.sqrt RNE (fp.roundToIntegral RNE x1))))) (fp.add RNE (fp.div RNE (fp.div RNE (fp.max (fp.div RNE x0 x8) (fp.sub RNE x4 x3)) (fp.sqrt RNE (fp.abs x4))) (fp.div RNE (fp.max (fp.max x7 x5) (fp.sqrt RNE x3)) (fp.sub RNE (fp.neg x3) (fp.roundToIntegral RNE x6)))) (fp.div RNE (fp.max (fp.sub RNE (fp.add RNE x9 x4) (fp.max x9 x4)) (fp.mul RNE (fp.sub RNE x8 x5) (fp.mul RNE x5 x5))) (fp.div RNE (fp.sub RNE (fp.div RNE x3 x4) (fp.div RNE x5 x7)) (fp.max (fp.mul RNE x9 x7) (fp.mul RNE x1 x0))))))))(check-sat)