;  time  = {'mathsat': 28.947870016098022, 'z3': 600}
;  terms = 67
;  score = 571.052129983902
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
(assert (fp.gt (fp.roundToIntegral RNE (fp.div RNE (fp.roundToIntegral RNE (fp.min (fp.div RNE x3 x9) (fp.div RNE x0 (fp.roundToIntegral RNE x2)))) (fp.div RNE (fp.div RNE (fp.sqrt RNE x9) (fp.abs x7)) (fp.abs (fp.mul RNE (fp.add RNE x4 x3) (fp.neg x0)))))) (fp.neg (fp.div RNE (fp.div RNE (fp.div RNE (fp.roundToIntegral RNE x8) (fp.sub RNE (fp.roundToIntegral RNE x7) (fp.abs x6))) (fp.add RNE (fp.div RNE x9 (fp.min x3 x8)) (fp.max x1 x4))) (fp.div RNE (fp.div RNE (fp.min x9 x2) (fp.add RNE (fp.neg x5) (fp.max x8 x6))) (fp.mul RNE (fp.div RNE (fp.roundToIntegral RNE x9) (fp.add RNE x7 x1)) (fp.sqrt RNE (fp.add RNE x4 x8))))))))(check-sat)