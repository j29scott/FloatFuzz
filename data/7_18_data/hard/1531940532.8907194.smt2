;  time  = 600
;  terms = 132
;  score = 0.5129151291512916
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
(assert (fp.isSubnormal (fp.sub RNE (fp.mul RNE (fp.neg (fp.abs x14)) (fp.sub RNE (fp.sub RNE (fp.mul RNE (fp.mul RNE (fp.add RNE (fp.abs x6) x12) (fp.sub RNE (fp.abs (fp.add RNE x14 x11)) (fp.abs (fp.sub RNE x4 x7)))) x14) (fp.sub RNE (fp.abs (fp.add RNE (fp.add RNE x14 x4) (fp.abs (fp.add RNE x12 x11)))) (fp.neg (fp.sub RNE (fp.abs x13) (fp.abs (fp.abs x5)))))) (fp.sub RNE x7 x3))) (fp.sub RNE (fp.mul RNE (fp.mul RNE (fp.abs (fp.abs (fp.mul RNE (fp.sub RNE (fp.sub RNE x11 x8) (fp.abs x3)) (fp.sub RNE (fp.abs x5) (fp.abs x4))))) (fp.abs (fp.neg (fp.sub RNE (fp.mul RNE (fp.neg x1) x8) x13)))) (fp.mul RNE (fp.add RNE x1 (fp.sub RNE x1 (fp.sub RNE x10 (fp.abs (fp.sub RNE x11 x13))))) (fp.mul RNE (fp.add RNE (fp.add RNE (fp.sub RNE (fp.sub RNE x7 x7) (fp.mul RNE x3 x9)) (fp.abs (fp.abs x13))) (fp.mul RNE (fp.abs (fp.mul RNE x2 x2)) (fp.abs (fp.abs x12)))) x4))) (fp.abs (fp.add RNE (fp.mul RNE (fp.sub RNE (fp.abs (fp.sub RNE (fp.add RNE x8 x9) (fp.sub RNE x0 x13))) (fp.add RNE (fp.sub RNE x11 x13) (fp.mul RNE (fp.mul RNE x8 x8) (fp.add RNE x8 x0)))) (fp.neg (fp.abs (fp.abs (fp.mul RNE x11 x13))))) x13))))))
(check-sat)