;  time  = {'z3': 600, 'mathsat': 46.034815311431885}
;  terms = 78
;  score = 553.9651846885681
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
(assert (fp.eq (fp.div RNE (fp.add RNE (fp.mul RNE (fp.div RNE (fp.mul RNE x1 x9) (fp.neg x7)) (fp.max (fp.sub RNE x9 x9) (fp.min x0 x8))) (fp.sqrt RNE (fp.div RNE (fp.sqrt RNE x5) (fp.add RNE x6 x0)))) (fp.neg (fp.min (fp.max (fp.min x1 x1) (fp.add RNE x9 x1)) (fp.roundToIntegral RNE (fp.roundToIntegral RNE x7))))) (fp.add RNE (fp.sqrt RNE (fp.neg (fp.div RNE (fp.sub RNE x7 x0) (fp.neg x1)))) (fp.add RNE (fp.mul RNE (fp.min (fp.abs x4) (fp.add RNE x3 x5)) (fp.div RNE (fp.add RNE x9 x1) (fp.sqrt RNE x5))) (fp.max (fp.mul RNE (fp.add RNE (fp.abs x3) (fp.div RNE x1 x4)) (fp.add RNE (fp.div RNE x7 x8) (fp.div RNE x7 x6))) (fp.sqrt RNE (fp.neg (fp.sqrt RNE x5))))))))(check-sat)