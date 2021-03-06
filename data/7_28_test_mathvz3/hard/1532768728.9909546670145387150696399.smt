;  time  = {'z3': 569.664, 'mathsat': 4.4834840297698975}
;  terms = 80
;  score = 565.1805159702301
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
(assert (fp.geq (fp.div RNE (fp.div RNE (fp.sqrt RNE (fp.mul RNE (fp.sub RNE x7 x8) (fp.add RNE x1 x5))) (fp.mul RNE (fp.mul RNE (fp.min x7 x2) (fp.abs x7)) (fp.min (fp.min x6 (fp.div RNE x2 x4)) (fp.min x1 x9)))) (fp.add RNE (fp.add RNE (fp.div RNE (fp.div RNE x8 x2) (fp.mul RNE x2 x8)) (fp.max (fp.mul RNE x5 x6) (fp.roundToIntegral RNE x5))) (fp.mul RNE (fp.min (fp.roundToIntegral RNE x5) (fp.div RNE x6 x6)) (fp.min (fp.min x1 x1) (fp.sqrt RNE (fp.neg x3)))))) (fp.sqrt RNE (fp.min (fp.mul RNE (fp.min (fp.sqrt RNE x5) (fp.min x5 x7)) (fp.neg (fp.sqrt RNE x9))) (fp.sub RNE (fp.div RNE (fp.roundToIntegral RNE x7) (fp.roundToIntegral RNE x7)) (fp.sub RNE (fp.min x2 x0) (fp.sqrt RNE x1)))))))(check-sat)