;  time  = {'mathsat': 105.87652230262756, 'z3': 600}
;  terms = 58
;  score = 494.12347769737244
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
(assert (fp.leq (fp.sqrt RNE (fp.div RNE (fp.add RNE (fp.div RNE (fp.div RNE x0 x5) (fp.div RNE (fp.neg x4) (fp.div RNE x1 x9))) (fp.div RNE (fp.add RNE x4 x7) (fp.add RNE x6 x8))) (fp.max (fp.div RNE (fp.sub RNE x1 (fp.sub RNE x5 x2)) (fp.add RNE (fp.min x8 x8) (fp.roundToIntegral RNE x5))) (fp.add RNE (fp.sqrt RNE x7) (fp.sub RNE (fp.add RNE x6 x2) (fp.sub RNE x6 x1)))))) (fp.neg (fp.abs (fp.add RNE (fp.add RNE (fp.sqrt RNE x8) (fp.div RNE x5 (fp.roundToIntegral RNE x8))) (fp.abs (fp.add RNE x5 x0)))))))(check-sat)