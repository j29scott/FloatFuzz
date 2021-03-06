;  time  = {'mathsat': 5.848179340362549, 'z3': 600}
;  terms = 74
;  score = 594.1518206596375
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
(assert (fp.isZero (fp.div RNE (fp.max (fp.sub RNE (fp.max (fp.div RNE x3 x7) (fp.div RNE x1 x1)) (fp.max (fp.max x5 x9) (fp.max x9 (fp.sub RNE x4 x4)))) (fp.mul RNE (fp.div RNE (fp.max x1 x8) (fp.sub RNE x7 x9)) (fp.sqrt RNE (fp.sub RNE x5 (fp.neg x8))))) (fp.div RNE (fp.div RNE (fp.neg (fp.sub RNE x9 x2)) (fp.div RNE (fp.roundToIntegral RNE x0) (fp.sub RNE (fp.div RNE x8 x8) (fp.roundToIntegral RNE x1)))) (fp.min (fp.max (fp.sqrt RNE (fp.sub RNE x0 x9)) (fp.max (fp.abs x3) (fp.div RNE x0 x8))) (fp.div RNE (fp.sub RNE (fp.abs x4) (fp.mul RNE x2 x5)) (fp.div RNE (fp.div RNE x8 x4) (fp.max x8 x7))))))))(check-sat)