;  time  = {'z3': 600, 'mathsat': 44.88281464576721}
;  terms = 55
;  score = 555.1171853542328
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
(assert (fp.isZero (fp.add RNE (fp.sub RNE (fp.div RNE (fp.sub RNE (fp.div RNE x8 x7) (fp.add RNE (fp.sqrt RNE x7) (fp.mul RNE x2 x5))) (fp.div RNE (fp.neg x1) (fp.div RNE x2 x9))) (fp.sub RNE (fp.mul RNE (fp.mul RNE x6 x2) (fp.div RNE x0 x2)) (fp.sub RNE (fp.sub RNE (fp.sqrt RNE x6) (fp.sqrt RNE x1)) (fp.abs (fp.sub RNE x4 x1))))) (fp.max (fp.neg (fp.min (fp.max x1 x9) (fp.div RNE x8 x4))) (fp.sqrt RNE (fp.mul RNE (fp.min x9 x8) (fp.max x3 x9)))))))(check-sat)