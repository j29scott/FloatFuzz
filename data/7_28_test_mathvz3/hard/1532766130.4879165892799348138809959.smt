;  time  = {'z3': 600, 'mathsat': 9.627926111221313}
;  terms = 88
;  score = 590.3720738887787
;  stdout= {'z3': 'timeout\n', 'mathsat': 'sat'}
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
(assert (fp.isNaN (fp.sub RNE (fp.div RNE (fp.abs (fp.div RNE (fp.div RNE x8 (fp.div RNE x0 x8)) (fp.div RNE x9 (fp.abs x4)))) (fp.sub RNE (fp.mul RNE (fp.min x1 x8) (fp.max (fp.add RNE x8 x1) (fp.div RNE x5 x1))) (fp.div RNE (fp.add RNE (fp.div RNE x7 x6) (fp.div RNE x2 x6)) (fp.min (fp.mul RNE x3 x6) (fp.min x2 x9))))) (fp.mul RNE (fp.neg (fp.div RNE (fp.div RNE (fp.div RNE x0 x1) (fp.sqrt RNE x1)) (fp.sub RNE (fp.div RNE x8 x7) (fp.div RNE x0 x3)))) (fp.div RNE (fp.max (fp.div RNE (fp.sub RNE x8 x0) (fp.div RNE x8 x0)) (fp.mul RNE (fp.mul RNE x3 x8) (fp.sub RNE x8 x2))) (fp.div RNE (fp.div RNE (fp.min x4 x2) (fp.div RNE x5 x7)) (fp.mul RNE (fp.max x7 x7) (fp.max x8 x4))))))))(check-sat)