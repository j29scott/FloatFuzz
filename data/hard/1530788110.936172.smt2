;  time = 437.9406657218933
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
(assert (fp.geq (fp.sub RNE (fp.mul RNE (fp.neg (fp.neg (fp.add RNE x0 (fp.add RNE (fp.mul RNE x7 x5) (fp.add RNE (fp.sub RNE (fp.sub RNE x12 x12) (fp.add RNE x4 x5)) (fp.add RNE (fp.neg x1) (fp.mul RNE x3 x13))))))) (fp.mul RNE (fp.neg (fp.neg (fp.neg (fp.mul RNE (fp.neg (fp.add RNE x11 x2)) (fp.abs (fp.mul RNE x12 x5)))))) x12)) (fp.sub RNE (fp.neg x7) x7)) (fp.add RNE (fp.add RNE (fp.neg (fp.sub RNE (fp.mul RNE (fp.abs (fp.abs (fp.neg (fp.abs x4)))) (fp.add RNE x7 (fp.mul RNE (fp.sub RNE (fp.mul RNE x14 x14) (fp.sub RNE x4 x7)) (fp.add RNE (fp.mul RNE x4 x0) (fp.mul RNE x1 x2))))) (fp.abs (fp.abs (fp.sub RNE x0 x2))))) (fp.neg (fp.mul RNE (fp.sub RNE (fp.neg (fp.abs (fp.add RNE (fp.abs x14) (fp.sub RNE x10 x11)))) (fp.neg x1)) (fp.add RNE (fp.sub RNE (fp.sub RNE (fp.add RNE x14 x3) (fp.add RNE (fp.abs x12) (fp.add RNE x1 x4))) (fp.sub RNE x10 (fp.neg (fp.sub RNE x0 x12)))) (fp.neg (fp.mul RNE x11 (fp.add RNE (fp.sub RNE x7 x10) x6))))))) (fp.neg (fp.mul RNE (fp.mul RNE x6 (fp.mul RNE (fp.add RNE (fp.add RNE (fp.sub RNE (fp.mul RNE x5 x13) (fp.abs x10)) (fp.sub RNE (fp.add RNE x9 x5) (fp.add RNE x1 x7))) (fp.add RNE (fp.sub RNE (fp.neg x6) (fp.add RNE x4 x8)) (fp.abs (fp.add RNE x11 x9)))) (fp.add RNE (fp.mul RNE (fp.add RNE (fp.neg x13) x2) x4) (fp.mul RNE x9 (fp.mul RNE (fp.mul RNE x5 x4) x3))))) (fp.sub RNE (fp.add RNE (fp.abs x8) (fp.neg (fp.abs x9))) (fp.neg (fp.add RNE (fp.abs (fp.neg x0)) (fp.add RNE (fp.add RNE (fp.mul RNE x0 x6) (fp.mul RNE x9 x4)) x4)))))))))
(check-sat)