;  time  = 600
;  terms = 130
;  score = 0.3157894736842105
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
(assert (fp.isSubnormal (fp.add RNE (fp.add RNE (fp.abs (fp.neg (fp.sub RNE (fp.add RNE (fp.mul RNE x5 (fp.neg x2)) (fp.add RNE (fp.add RNE (fp.neg x8) (fp.add RNE x3 x1)) (fp.sub RNE x6 (fp.add RNE x8 x12)))) (fp.abs (fp.add RNE (fp.neg (fp.sub RNE x4 x10)) (fp.neg (fp.neg x4))))))) (fp.sub RNE (fp.abs (fp.mul RNE (fp.neg (fp.sub RNE (fp.neg (fp.mul RNE x3 x5)) (fp.add RNE (fp.abs x14) x5))) (fp.mul RNE (fp.neg (fp.abs (fp.mul RNE x2 x10))) (fp.mul RNE (fp.mul RNE x0 (fp.sub RNE x12 x1)) x13)))) x1)) (fp.sub RNE (fp.add RNE (fp.add RNE (fp.abs (fp.add RNE (fp.sub RNE (fp.add RNE (fp.neg x11) (fp.neg x9)) (fp.neg (fp.add RNE x0 x11))) (fp.sub RNE (fp.sub RNE x10 (fp.add RNE x10 x8)) (fp.mul RNE (fp.neg x8) (fp.neg x8))))) (fp.sub RNE (fp.sub RNE (fp.neg (fp.neg x5)) (fp.abs (fp.neg x3))) (fp.abs x11))) x4) (fp.neg (fp.mul RNE (fp.add RNE (fp.neg x7) (fp.neg (fp.abs (fp.add RNE (fp.abs x12) (fp.mul RNE x3 x13))))) (fp.sub RNE (fp.add RNE (fp.neg (fp.abs (fp.sub RNE x0 x7))) (fp.neg (fp.sub RNE (fp.neg x9) (fp.neg x2)))) (fp.add RNE (fp.neg (fp.abs (fp.neg x7))) (fp.abs (fp.neg x3))))))))))
(check-sat)