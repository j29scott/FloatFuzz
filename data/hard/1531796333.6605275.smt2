;  time  = 551.7809934616089
;  chars = 863
;  score = 0.7855280280354943
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
(assert (fp.isSubnormal (fp.sub RNE (fp.abs x6) (fp.mul RNE x11 (fp.add RNE (fp.add RNE (fp.sub RNE (fp.add RNE (fp.add RNE (fp.sub RNE (fp.neg x12) (fp.sub RNE x12 x4)) (fp.neg (fp.abs x5))) (fp.mul RNE (fp.mul RNE x6 (fp.add RNE x7 x8)) (fp.add RNE (fp.mul RNE x10 x2) (fp.abs x0)))) (fp.add RNE x6 (fp.sub RNE (fp.neg x12) (fp.neg x13)))) x14) (fp.sub RNE (fp.neg (fp.mul RNE (fp.sub RNE (fp.add RNE x11 (fp.abs x4)) (fp.mul RNE (fp.mul RNE x11 x6) (fp.mul RNE x6 x9))) (fp.neg (fp.add RNE (fp.mul RNE x14 x3) (fp.mul RNE x0 x12))))) (fp.add RNE (fp.add RNE (fp.neg (fp.add RNE (fp.mul RNE x11 x14) x14)) (fp.sub RNE (fp.add RNE (fp.neg x6) (fp.mul RNE x9 x5)) (fp.add RNE (fp.mul RNE x0 x2) (fp.neg x7)))) (fp.sub RNE (fp.add RNE (fp.sub RNE (fp.mul RNE x8 x13) (fp.abs x11)) (fp.abs (fp.abs x4))) (fp.neg (fp.mul RNE (fp.add RNE x13 x14) (fp.sub RNE x2 x12)))))))))))
(check-sat)