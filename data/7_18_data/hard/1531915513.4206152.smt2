;  time  = 600
;  terms = 116
;  score = 0.5284552845528455
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
(assert (fp.isSubnormal (fp.add RNE (fp.add RNE (fp.add RNE (fp.neg x10) (fp.sub RNE (fp.sub RNE (fp.sub RNE (fp.sub RNE (fp.abs x13) x13) (fp.mul RNE x4 (fp.sub RNE (fp.mul RNE x7 x12) (fp.mul RNE x13 x6)))) (fp.neg (fp.abs (fp.sub RNE (fp.add RNE x10 x3) (fp.mul RNE x3 x5))))) (fp.add RNE (fp.mul RNE (fp.abs (fp.sub RNE (fp.mul RNE x8 x9) (fp.add RNE x2 x13))) (fp.sub RNE (fp.neg x4) (fp.mul RNE (fp.add RNE x10 x1) (fp.neg x9)))) (fp.add RNE (fp.add RNE (fp.sub RNE (fp.sub RNE x8 x11) x5) x9) (fp.add RNE (fp.sub RNE (fp.add RNE x3 x12) x14) (fp.add RNE (fp.sub RNE x4 x3) (fp.sub RNE x9 x8))))))) x9) (fp.abs (fp.add RNE (fp.mul RNE (fp.mul RNE x2 (fp.mul RNE (fp.neg (fp.add RNE (fp.abs x4) (fp.add RNE x9 x10))) (fp.sub RNE x13 x7))) (fp.abs (fp.mul RNE (fp.add RNE (fp.mul RNE (fp.mul RNE x6 x12) (fp.sub RNE x0 x2)) (fp.mul RNE (fp.abs x9) (fp.add RNE x8 x6))) (fp.mul RNE (fp.sub RNE (fp.add RNE x3 x0) (fp.neg x11)) x9)))) (fp.sub RNE x0 (fp.abs x12)))))))
(check-sat)