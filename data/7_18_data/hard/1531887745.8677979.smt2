;  time  = 600
;  terms = 92
;  score = 0.5598086124401914
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
(assert (fp.isSubnormal (fp.add RNE (fp.neg (fp.sub RNE (fp.add RNE (fp.mul RNE (fp.abs (fp.abs x1)) (fp.sub RNE (fp.sub RNE (fp.sub RNE (fp.sub RNE x3 x4) (fp.sub RNE x6 x0)) (fp.mul RNE (fp.abs x13) (fp.abs x12))) (fp.add RNE (fp.abs (fp.mul RNE x8 x13)) (fp.mul RNE (fp.sub RNE x3 x0) (fp.neg x8))))) (fp.sub RNE (fp.mul RNE (fp.sub RNE x14 (fp.neg (fp.sub RNE x10 x4))) (fp.neg (fp.add RNE (fp.add RNE x2 x5) x14))) (fp.abs (fp.mul RNE (fp.mul RNE x5 (fp.sub RNE x1 x6)) (fp.abs (fp.sub RNE x6 x14)))))) (fp.add RNE x12 (fp.mul RNE (fp.add RNE (fp.sub RNE (fp.neg (fp.neg x6)) (fp.mul RNE x11 (fp.sub RNE x10 x11))) x1) (fp.mul RNE (fp.sub RNE (fp.sub RNE x1 x1) (fp.abs (fp.neg x1))) (fp.sub RNE (fp.neg (fp.sub RNE x1 x8)) (fp.add RNE x14 (fp.sub RNE x6 x8)))))))) x8)))
(check-sat)