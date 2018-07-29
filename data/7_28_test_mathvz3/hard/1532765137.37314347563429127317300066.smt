;  time  = {'mathsat': 5.951664686203003, 'z3': 600}
;  terms = 83
;  score = 594.048335313797
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
(assert (fp.gt (fp.max (fp.div RNE (fp.mul RNE (fp.div RNE (fp.div RNE x6 x3) (fp.div RNE (fp.sqrt RNE x9) (fp.max x1 x2))) (fp.div RNE (fp.mul RNE x1 (fp.max x9 x0)) (fp.max x0 x0))) (fp.div RNE (fp.abs (fp.abs x2)) (fp.div RNE (fp.max (fp.mul RNE x1 x9) (fp.add RNE x2 x5)) (fp.div RNE (fp.div RNE x2 x0) (fp.sqrt RNE x6))))) (fp.roundToIntegral RNE (fp.sqrt RNE (fp.roundToIntegral RNE (fp.max (fp.min x2 x0) (fp.add RNE x9 x0)))))) (fp.mul RNE (fp.sqrt RNE (fp.max (fp.max (fp.mul RNE x8 x4) (fp.abs (fp.max x5 x2))) (fp.mul RNE (fp.roundToIntegral RNE x5) (fp.sqrt RNE x1)))) (fp.sqrt RNE (fp.div RNE (fp.max (fp.div RNE x6 (fp.sqrt RNE x1)) (fp.abs (fp.abs x5))) (fp.div RNE (fp.abs x9) (fp.max x3 x7)))))))(check-sat)