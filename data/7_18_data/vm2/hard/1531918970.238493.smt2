;  time  = 600
;  terms = 105
;  score = 0.43243243243243246
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
(assert (fp.isSubnormal (fp.neg (fp.mul RNE (fp.add RNE (fp.add RNE (fp.neg (fp.abs x7)) (fp.mul RNE (fp.mul RNE (fp.mul RNE (fp.mul RNE (fp.neg x4) (fp.sub RNE x9 x8)) (fp.mul RNE (fp.add RNE x13 x6) (fp.abs x7))) (fp.mul RNE (fp.abs (fp.mul RNE x3 x5)) x11)) (fp.mul RNE (fp.add RNE (fp.add RNE (fp.mul RNE x11 x6) (fp.sub RNE x6 x9)) x3) (fp.neg (fp.mul RNE (fp.neg x9) (fp.mul RNE x4 x9)))))) (fp.mul RNE (fp.sub RNE (fp.abs (fp.sub RNE (fp.mul RNE (fp.mul RNE x14 x10) (fp.sub RNE x6 x4)) x9)) (fp.add RNE (fp.mul RNE (fp.neg x1) (fp.neg (fp.abs x3))) (fp.mul RNE (fp.add RNE x5 (fp.add RNE x0 x5)) (fp.add RNE (fp.neg x13) x0)))) (fp.add RNE x5 (fp.add RNE (fp.sub RNE (fp.add RNE x12 (fp.abs x9)) (fp.neg (fp.abs x14))) (fp.neg x7))))) (fp.sub RNE x9 (fp.add RNE (fp.add RNE (fp.abs (fp.add RNE x0 (fp.mul RNE x0 (fp.abs x1)))) (fp.mul RNE (fp.abs (fp.abs x4)) x6)) x13))))))
(check-sat)