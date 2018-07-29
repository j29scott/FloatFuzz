;  time  = {'mathsat': 3.428316593170166, 'z3': 575.403}
;  terms = 77
;  score = 571.9746834068299
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
(assert (fp.isZero (fp.div RNE (fp.div RNE (fp.sub RNE (fp.min (fp.sqrt RNE x8) (fp.mul RNE x5 x0)) (fp.div RNE (fp.sub RNE (fp.neg x8) (fp.div RNE x6 x3)) (fp.div RNE (fp.div RNE x6 x1) (fp.neg x9)))) (fp.sub RNE (fp.div RNE (fp.sqrt RNE x4) (fp.add RNE x5 (fp.abs x5))) (fp.max (fp.mul RNE (fp.roundToIntegral RNE x9) (fp.mul RNE x7 x0)) (fp.roundToIntegral RNE (fp.sub RNE x7 x8))))) (fp.sub RNE (fp.sqrt RNE (fp.sqrt RNE (fp.min (fp.sub RNE x7 x4) (fp.sub RNE x7 x3)))) (fp.max (fp.min (fp.mul RNE (fp.sub RNE x3 x1) (fp.mul RNE x1 x9)) (fp.add RNE (fp.add RNE x6 x2) (fp.mul RNE x5 x3))) (fp.max (fp.sqrt RNE (fp.min x9 x3)) (fp.abs (fp.min x9 x3))))))))(check-sat)