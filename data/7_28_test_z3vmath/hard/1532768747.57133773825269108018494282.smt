;  time  = {'z3': 600}
;  terms = 108
;  score = 600
;  stdout= {'z3': 'timeout\n'}
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
(assert (fp.leq (fp.sqrt RNE (fp.div RNE (fp.sub RNE (fp.abs (fp.add RNE x7 x5)) (fp.div RNE (fp.abs x9) (fp.abs x5))) (fp.div RNE (fp.abs (fp.div RNE x7 x0)) (fp.sub RNE (fp.min (fp.sub RNE x0 x2) (fp.max x5 x2)) (fp.div RNE (fp.sub RNE x3 x1) (fp.mul RNE x1 x0)))))) (fp.mul RNE (fp.min (fp.mul RNE (fp.abs (fp.div RNE x7 x9)) (fp.abs (fp.div RNE x4 (fp.min x9 x8)))) (fp.add RNE (fp.add RNE (fp.sqrt RNE (fp.min x6 x2)) (fp.sub RNE (fp.abs x8) (fp.div RNE x4 x8))) (fp.add RNE (fp.mul RNE (fp.abs x6) (fp.min x4 x1)) (fp.div RNE (fp.abs x6) (fp.div RNE x6 x9))))) (fp.min (fp.sqrt RNE (fp.add RNE (fp.div RNE x9 x6) (fp.abs x7))) (fp.max (fp.min (fp.min (fp.div RNE x0 x7) (fp.div RNE x7 x8)) (fp.div RNE (fp.add RNE x5 x3) (fp.mul RNE x3 x4))) (fp.div RNE (fp.div RNE (fp.sub RNE x4 x7) (fp.abs x5)) (fp.min (fp.max x1 x0) (fp.abs x5))))))))(check-sat)