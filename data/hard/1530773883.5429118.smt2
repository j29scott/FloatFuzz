;  time = 563.4599876403809
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
(assert (fp.isSubnormal (fp.sub RNE (fp.add RNE (fp.mul RNE (fp.abs (fp.add RNE (fp.add RNE (fp.abs (fp.mul RNE x5 (fp.sub RNE x6 x7))) (fp.sub RNE x8 (fp.abs (fp.neg x5)))) (fp.sub RNE (fp.mul RNE x6 (fp.neg x10)) (fp.add RNE (fp.add RNE x9 (fp.abs x7)) (fp.abs (fp.mul RNE x8 x13)))))) (fp.sub RNE (fp.mul RNE (fp.sub RNE x9 (fp.mul RNE x6 (fp.sub RNE (fp.mul RNE x6 x6) (fp.add RNE x6 x1)))) x2) (fp.abs (fp.abs x14)))) (fp.sub RNE (fp.neg (fp.sub RNE (fp.abs (fp.neg x11)) (fp.sub RNE (fp.sub RNE (fp.sub RNE (fp.neg x7) x2) (fp.abs (fp.add RNE x11 x14))) (fp.sub RNE (fp.sub RNE x6 x11) (fp.add RNE (fp.add RNE x6 x0) (fp.abs x12)))))) x4)) (fp.neg (fp.add RNE (fp.mul RNE (fp.add RNE (fp.neg x13) x1) (fp.add RNE x0 (fp.sub RNE x10 x2))) x5)))))
(check-sat)