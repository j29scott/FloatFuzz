;  time  = 600
;  terms = 84
;  score = 0.5578947368421052
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
(assert (fp.isSubnormal (fp.mul RNE (fp.neg (fp.add RNE (fp.neg (fp.mul RNE (fp.sub RNE (fp.add RNE (fp.sub RNE (fp.abs x1) x11) (fp.sub RNE x8 (fp.mul RNE x14 x9))) x8) (fp.mul RNE x13 x3))) (fp.abs (fp.mul RNE x11 (fp.neg (fp.add RNE (fp.sub RNE x10 (fp.abs x13)) x3)))))) (fp.abs (fp.mul RNE (fp.sub RNE (fp.sub RNE (fp.sub RNE (fp.abs (fp.neg (fp.mul RNE x14 x0))) (fp.mul RNE (fp.mul RNE (fp.mul RNE x10 x12) (fp.sub RNE x11 x4)) (fp.sub RNE (fp.add RNE x2 x2) (fp.abs x1)))) (fp.mul RNE (fp.neg (fp.mul RNE (fp.neg x9) x12)) (fp.add RNE (fp.sub RNE (fp.sub RNE x8 x5) (fp.abs x2)) (fp.sub RNE x3 (fp.neg x2))))) (fp.mul RNE x10 (fp.neg (fp.neg (fp.sub RNE (fp.mul RNE x7 x14) (fp.sub RNE x4 x3)))))) x12)))))
(check-sat)