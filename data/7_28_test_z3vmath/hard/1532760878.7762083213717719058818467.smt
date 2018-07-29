;  time  = {'z3': 600}
;  terms = 83
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
(assert (fp.eq (fp.div RNE (fp.sub RNE (fp.div RNE (fp.div RNE (fp.max x4 x0) (fp.add RNE (fp.mul RNE x8 x8) (fp.mul RNE x4 x8))) (fp.div RNE (fp.div RNE x5 x0) (fp.div RNE x9 x3))) (fp.abs (fp.neg (fp.sqrt RNE x3)))) (fp.min (fp.neg (fp.div RNE (fp.abs (fp.neg x8)) (fp.mul RNE (fp.div RNE x5 x6) (fp.roundToIntegral RNE x3)))) (fp.mul RNE (fp.neg (fp.div RNE (fp.add RNE x1 x6) (fp.sub RNE x2 x6))) (fp.roundToIntegral RNE (fp.div RNE (fp.abs x9) (fp.div RNE x4 x6)))))) (fp.neg (fp.div RNE (fp.div RNE (fp.abs (fp.sqrt RNE x7)) (fp.div RNE (fp.div RNE x1 x5) (fp.abs (fp.add RNE x0 x9)))) (fp.mul RNE (fp.div RNE (fp.abs (fp.mul RNE x3 x3)) (fp.abs (fp.div RNE x1 x5))) (fp.abs (fp.abs (fp.sub RNE x1 x6))))))))(check-sat)