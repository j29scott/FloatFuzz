;  time  = 600
;  terms = 75
;  score = 0.7
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
(assert (fp.isSubnormal (fp.mul RNE (fp.sub RNE (fp.sub RNE (fp.mul RNE x8 (fp.add RNE x1 (fp.sub RNE (fp.sub RNE (fp.sub RNE (fp.mul RNE x9 x6) (fp.mul RNE x13 x1)) (fp.abs (fp.sub RNE x14 x10))) (fp.sub RNE x1 x3)))) (fp.add RNE (fp.sub RNE x2 x8) x5)) (fp.sub RNE (fp.mul RNE (fp.neg x7) x8) (fp.mul RNE (fp.neg (fp.sub RNE (fp.abs (fp.mul RNE (fp.abs x2) x11)) (fp.abs (fp.abs (fp.neg x10))))) (fp.abs (fp.neg (fp.abs (fp.neg x6))))))) (fp.abs (fp.mul RNE x1 (fp.add RNE (fp.sub RNE (fp.abs (fp.mul RNE (fp.sub RNE (fp.sub RNE x1 x6) (fp.neg x9)) (fp.add RNE (fp.sub RNE x5 x6) (fp.sub RNE x7 x1)))) (fp.abs (fp.abs x2))) x6))))))
(check-sat)