;  time  = 600
;  terms = 107
;  score = 0.624561403508772
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
(declare-const x10 (_ FloatingPoint 8 24))
(declare-const x11 (_ FloatingPoint 8 24))
(declare-const x12 (_ FloatingPoint 8 24))
(declare-const x13 (_ FloatingPoint 8 24))
(declare-const x14 (_ FloatingPoint 8 24))
(assert (fp.isSubnormal (fp.add RNE (fp.abs (fp.sub RNE (fp.sub RNE (fp.add RNE (fp.abs (fp.mul RNE x3 (fp.mul RNE (fp.sub RNE x11 x1) (fp.neg x7)))) (fp.add RNE (fp.neg x14) x11)) (fp.abs (fp.neg (fp.add RNE (fp.mul RNE (fp.mul RNE x13 x14) (fp.mul RNE x4 x12)) (fp.neg (fp.sub RNE x3 x11)))))) (fp.neg (fp.add RNE (fp.sub RNE (fp.neg (fp.neg (fp.add RNE x3 x0))) (fp.add RNE x1 (fp.sub RNE (fp.mul RNE x8 x6) x9))) (fp.add RNE (fp.abs (fp.sub RNE (fp.abs x4) (fp.mul RNE x6 x1))) (fp.neg (fp.neg x6))))))) (fp.add RNE (fp.mul RNE (fp.add RNE (fp.sub RNE (fp.sub RNE (fp.abs x11) (fp.neg (fp.mul RNE x14 (fp.add RNE x11 x1)))) (fp.neg (fp.mul RNE (fp.add RNE (fp.add RNE x8 x7) (fp.add RNE x2 x12)) (fp.neg (fp.neg x3))))) (fp.sub RNE (fp.neg (fp.sub RNE (fp.add RNE (fp.sub RNE x1 x4) x7) x5)) (fp.add RNE (fp.mul RNE x13 x7) (fp.sub RNE (fp.neg (fp.mul RNE x9 x3)) (fp.abs (fp.neg x5)))))) x3) x3))))
(check-sat)