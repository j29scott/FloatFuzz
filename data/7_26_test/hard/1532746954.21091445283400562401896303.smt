;  time  = {'z3': 600, 'mathsat': 5.5674474239349365}
;  terms = 61
;  score = 594.4325525760651
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
(assert (fp.lt (fp.abs (fp.neg (fp.roundToIntegral RNE (fp.abs (fp.div RNE x6 x1))))) (fp.div RNE (fp.add RNE (fp.div RNE (fp.abs (fp.sqrt RNE x6)) (fp.div RNE (fp.div RNE x6 (fp.max x7 x1)) (fp.sqrt RNE x8))) (fp.roundToIntegral RNE (fp.div RNE (fp.div RNE x5 x3) (fp.sub RNE (fp.div RNE x2 x1) (fp.sub RNE x6 x0))))) (fp.div RNE (fp.add RNE (fp.div RNE (fp.div RNE x2 x7) (fp.div RNE x2 (fp.neg x5))) (fp.div RNE (fp.add RNE x6 x6) (fp.abs x1))) (fp.add RNE (fp.div RNE (fp.div RNE x6 x4) (fp.abs x7)) (fp.roundToIntegral RNE (fp.div RNE x9 x6)))))))(check-sat)