;  time  = {'z3': 600, 'mathsat': 8.522716045379639}
;  terms = 62
;  score = 591.4772839546204
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
(assert (fp.isSubnormal (fp.max (fp.max (fp.abs (fp.max (fp.max x6 x7) (fp.div RNE x1 x8))) (fp.sqrt RNE (fp.div RNE (fp.div RNE x2 (fp.max x8 x6)) (fp.min x6 x5)))) (fp.div RNE (fp.div RNE (fp.min (fp.mul RNE x7 x7) (fp.max x2 x0)) (fp.div RNE (fp.div RNE (fp.add RNE x6 x2) (fp.neg x0)) (fp.div RNE (fp.div RNE x2 x9) (fp.div RNE x1 x4)))) (fp.div RNE (fp.sqrt RNE (fp.sqrt RNE x8)) (fp.div RNE (fp.div RNE (fp.mul RNE x0 x5) (fp.add RNE x4 x6)) (fp.sub RNE (fp.div RNE x5 x7) (fp.neg x6))))))))(check-sat)