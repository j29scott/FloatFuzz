;  time  = 600
;  terms = 73
;  score = 0.7306273062730627
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
(assert (fp.isSubnormal (fp.mul RNE (fp.add RNE x11 (fp.neg (fp.mul RNE (fp.add RNE (fp.mul RNE (fp.abs (fp.sub RNE x2 (fp.sub RNE x5 x9))) (fp.abs (fp.abs x6))) x0) (fp.neg (fp.sub RNE (fp.mul RNE (fp.add RNE x11 x10) x11) (fp.mul RNE (fp.abs x14) (fp.add RNE (fp.sub RNE x8 x10) (fp.neg x12)))))))) (fp.abs (fp.sub RNE (fp.sub RNE (fp.abs x5) (fp.mul RNE (fp.abs (fp.sub RNE (fp.mul RNE x10 (fp.neg x8)) x4)) (fp.sub RNE (fp.mul RNE (fp.mul RNE (fp.mul RNE x0 x11) x1) (fp.neg (fp.abs x1))) (fp.neg (fp.sub RNE (fp.abs x6) (fp.sub RNE x2 x4)))))) (fp.sub RNE (fp.abs (fp.neg (fp.abs (fp.add RNE x4 (fp.neg x10))))) x0))))))
(check-sat)