;  time  = {'z3': 573.15, 'mathsat': 102.48722243309021}
;  terms = 87
;  score = 470.66277756690977
;  stdout= {'z3': 'sat\n', 'mathsat': 'sat'}
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
(assert (fp.isNaN (fp.sub RNE (fp.div RNE (fp.div RNE (fp.max (fp.neg x5) (fp.add RNE (fp.mul RNE x1 x8) (fp.sub RNE x8 x2))) (fp.sub RNE (fp.div RNE x7 x7) (fp.neg x0))) (fp.min (fp.add RNE (fp.add RNE (fp.abs x9) (fp.div RNE x0 x5)) (fp.max (fp.sub RNE x9 x3) (fp.mul RNE x9 x2))) (fp.sub RNE (fp.abs (fp.add RNE x2 x9)) (fp.div RNE (fp.div RNE x5 x4) (fp.min x4 x2))))) (fp.add RNE (fp.max (fp.div RNE (fp.div RNE x0 x1) (fp.mul RNE x8 x8)) (fp.mul RNE (fp.sub RNE x6 (fp.sub RNE x5 x8)) (fp.max (fp.sub RNE x2 x8) (fp.div RNE x7 x3)))) (fp.max (fp.min (fp.sub RNE x6 x1) (fp.max x0 x7)) (fp.mul RNE (fp.min x3 x9) (fp.div RNE (fp.min x4 x3) (fp.neg x7))))))))(check-sat)