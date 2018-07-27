;  time  = {'z3': 599.924, 'mathsat': 29.362573623657227}
;  terms = 61
;  score = 570.5614263763428
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
(assert (fp.gt (fp.sub RNE (fp.div RNE (fp.min (fp.div RNE (fp.sqrt RNE x7) (fp.sub RNE (fp.neg x7) (fp.div RNE x0 x3))) (fp.sqrt RNE (fp.div RNE x2 x6))) (fp.div RNE (fp.max (fp.sqrt RNE (fp.min x6 x2)) (fp.roundToIntegral RNE (fp.div RNE x5 x5))) (fp.div RNE (fp.div RNE (fp.min x5 x6) (fp.sub RNE x6 x5)) (fp.sqrt RNE (fp.div RNE x2 x1))))) (fp.sqrt RNE (fp.roundToIntegral RNE (fp.neg (fp.add RNE x2 x9))))) (fp.sqrt RNE (fp.abs (fp.mul RNE (fp.div RNE (fp.abs x5) (fp.neg (fp.add RNE x4 x5))) (fp.min (fp.sqrt RNE x5) (fp.div RNE x9 x8)))))))(check-sat)