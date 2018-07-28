;  time  = {'mathsat': 15.115683794021606, 'z3': 600}
;  terms = 59
;  score = 584.8843162059784
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
(assert (fp.isNegative (fp.sub RNE (fp.div RNE (fp.roundToIntegral RNE (fp.add RNE (fp.div RNE x5 x1) (fp.div RNE x7 x6))) (fp.div RNE (fp.div RNE (fp.neg x5) (fp.mul RNE x9 x9)) (fp.div RNE (fp.div RNE x5 x9) (fp.div RNE x0 (fp.abs x8))))) (fp.div RNE (fp.div RNE (fp.sub RNE (fp.roundToIntegral RNE x4) (fp.sqrt RNE x0)) (fp.sqrt RNE (fp.div RNE (fp.sub RNE x3 x2) (fp.div RNE x5 x8)))) (fp.div RNE (fp.div RNE (fp.max x7 x1) (fp.max x9 x4)) (fp.div RNE (fp.div RNE (fp.sqrt RNE x6) (fp.sqrt RNE x2)) (fp.sqrt RNE (fp.div RNE x9 x9))))))))(check-sat)