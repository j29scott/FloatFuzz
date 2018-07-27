;  time  = {'mathsat': 7.34465217590332, 'z3': 570.394}
;  terms = 100
;  score = 563.0493478240967
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
(assert (fp.gt (fp.min (fp.sub RNE (fp.div RNE (fp.neg (fp.sub RNE x6 (fp.sub RNE x7 x0))) (fp.div RNE (fp.sub RNE x9 (fp.neg x7)) (fp.min x7 x0))) (fp.div RNE (fp.sub RNE (fp.div RNE x6 x4) (fp.mul RNE (fp.add RNE x9 x2) (fp.sub RNE x9 x5))) (fp.sub RNE (fp.add RNE x1 x5) (fp.sqrt RNE x7)))) (fp.max (fp.div RNE (fp.div RNE (fp.mul RNE x7 x2) (fp.sqrt RNE x7)) (fp.mul RNE (fp.min (fp.div RNE x4 x0) (fp.mul RNE x8 x2)) (fp.min (fp.sqrt RNE x7) (fp.min x5 x4)))) (fp.mul RNE (fp.div RNE (fp.sqrt RNE x2) (fp.div RNE x3 (fp.div RNE x1 x7))) (fp.max (fp.max x9 x7) (fp.sqrt RNE x7))))) (fp.sqrt RNE (fp.add RNE (fp.sqrt RNE (fp.sqrt RNE (fp.min x4 x5))) (fp.div RNE (fp.sub RNE (fp.min x7 x2) (fp.mul RNE (fp.abs x1) (fp.min x8 x8))) (fp.sub RNE (fp.div RNE x1 (fp.sub RNE x7 x0)) (fp.sub RNE x1 x0)))))))(check-sat)