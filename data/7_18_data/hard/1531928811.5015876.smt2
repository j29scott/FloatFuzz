;  time  = 600
;  terms = 2
;  score = 0.9915611814345991
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
(assert (fp.isSubnormal (fp.mul RNE (fp.abs (fp.mul RNE (fp.sub RNE (fp.mul RNE (fp.mul RNE (fp.neg (fp.neg (fp.sub RNE x7 x1))) (fp.sub RNE (fp.neg (fp.sub RNE x0 x1)) (fp.sub RNE (fp.abs x1) (fp.sub RNE x10 x0)))) x9) (fp.sub RNE (fp.abs (fp.abs (fp.abs (fp.abs x14)))) (fp.sub RNE (fp.abs x13) (fp.abs (fp.mul RNE (fp.mul RNE x8 x13) x2))))) (fp.neg x7))) (fp.add RNE (fp.mul RNE (fp.abs (fp.mul RNE (fp.sub RNE (fp.add RNE (fp.neg (fp.neg x11)) x11) (fp.mul RNE (fp.sub RNE x6 (fp.neg x12)) (fp.abs (fp.sub RNE x2 x6)))) (fp.sub RNE (fp.mul RNE (fp.abs (fp.abs x7)) x2) (fp.add RNE (fp.neg (fp.sub RNE x1 x9)) (fp.abs (fp.mul RNE x4 x10)))))) (fp.add RNE (fp.sub RNE (fp.sub RNE (fp.sub RNE (fp.sub RNE x12 (fp.neg x14)) x11) (fp.neg x4)) (fp.neg (fp.abs x4))) (fp.mul RNE (fp.add RNE (fp.add RNE (fp.mul RNE x2 (fp.mul RNE x5 x6)) (fp.neg (fp.mul RNE x4 x11))) (fp.neg (fp.sub RNE (fp.abs x14) x13))) (fp.add RNE (fp.add RNE (fp.neg (fp.sub RNE x2 x0)) (fp.sub RNE x9 (fp.neg x0))) (fp.add RNE (fp.add RNE (fp.mul RNE x14 x1) (fp.sub RNE x7 x5)) (fp.neg (fp.mul RNE x8 x10))))))) (fp.sub RNE (fp.add RNE (fp.neg (fp.add RNE (fp.sub RNE x6 x7) (fp.add RNE (fp.abs x5) x2))) (fp.mul RNE (fp.mul RNE (fp.mul RNE x2 x0) (fp.mul RNE (fp.add RNE x9 (fp.abs x11)) (fp.sub RNE (fp.sub RNE x13 x3) (fp.abs x1)))) x13)) (fp.add RNE (fp.add RNE (fp.abs (fp.abs (fp.sub RNE (fp.neg x2) (fp.mul RNE x11 x12)))) (fp.mul RNE (fp.mul RNE (fp.abs (fp.mul RNE x12 x2)) (fp.mul RNE (fp.abs x7) x7)) (fp.neg (fp.add RNE (fp.sub RNE x11 x9) x3)))) (fp.abs (fp.abs (fp.neg x5)))))))))
(check-sat)