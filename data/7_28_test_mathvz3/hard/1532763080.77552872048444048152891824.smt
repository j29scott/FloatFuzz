;  time  = {'mathsat': 4.671645402908325, 'z3': 572.927}
;  terms = 82
;  score = 568.2553545970917
;  stdout= {'mathsat': 'sat', 'z3': 'sat\n'}
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
(assert (fp.geq (fp.div RNE (fp.neg (fp.add RNE (fp.div RNE (fp.abs x3) (fp.sqrt RNE (fp.max x4 x6))) (fp.add RNE (fp.max x2 x2) (fp.mul RNE x3 x1)))) (fp.add RNE (fp.neg (fp.div RNE (fp.abs x1) (fp.sqrt RNE (fp.max x9 x9)))) (fp.abs (fp.sub RNE (fp.div RNE (fp.abs x5) (fp.sub RNE x1 x7)) (fp.abs (fp.div RNE x6 x7)))))) (fp.div RNE (fp.div RNE (fp.add RNE (fp.abs (fp.max x6 x0)) (fp.neg (fp.div RNE x5 (fp.roundToIntegral RNE x0)))) (fp.add RNE (fp.mul RNE (fp.sqrt RNE x8) (fp.sqrt RNE x7)) (fp.roundToIntegral RNE (fp.sub RNE (fp.add RNE x3 x4) (fp.max x9 x7))))) (fp.abs (fp.div RNE (fp.abs (fp.div RNE (fp.mul RNE x0 x4) (fp.add RNE x4 x2))) (fp.roundToIntegral RNE (fp.div RNE (fp.neg x7) (fp.mul RNE x5 x0))))))))(check-sat)