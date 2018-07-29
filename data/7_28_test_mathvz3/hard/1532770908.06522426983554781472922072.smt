;  time  = {'mathsat': 4.503665924072266, 'z3': 600}
;  terms = 59
;  score = 595.4963340759277
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
(assert (fp.isNaN (fp.mul RNE (fp.div RNE (fp.div RNE (fp.sub RNE (fp.div RNE x2 (fp.mul RNE x1 x0)) (fp.div RNE x7 (fp.max x5 x9))) (fp.add RNE (fp.sub RNE x8 x6) (fp.sub RNE x6 (fp.mul RNE x5 x0)))) (fp.div RNE (fp.div RNE (fp.sub RNE x9 x1) (fp.neg x0)) (fp.div RNE (fp.mul RNE (fp.div RNE x5 x7) (fp.sub RNE x3 x5)) (fp.mul RNE (fp.mul RNE x2 x5) (fp.mul RNE x8 x5))))) (fp.sqrt RNE (fp.sqrt RNE (fp.add RNE (fp.mul RNE (fp.min x0 x1) (fp.abs x4)) (fp.neg (fp.sub RNE x0 x9))))))))(check-sat)