;  time  = 545.1105723381042
;  terms = 150
;  score = 0.29187670162900003
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
(assert (fp.eq (fp.mul RNE (fp.mul RNE (fp.sub RNE (fp.mul RNE (fp.sub RNE (fp.abs (fp.mul RNE (fp.abs (fp.neg x12)) x4)) x11) (fp.sub RNE (fp.neg (fp.neg (fp.sub RNE (fp.sub RNE x4 x10) (fp.abs x3)))) (fp.abs (fp.neg (fp.sub RNE x14 x1))))) (fp.neg x7)) (fp.neg (fp.mul RNE (fp.sub RNE (fp.mul RNE (fp.sub RNE x1 x2) x0) x7) (fp.abs (fp.neg (fp.abs (fp.sub RNE (fp.abs x0) (fp.abs x14)))))))) (fp.sub RNE (fp.sub RNE (fp.sub RNE (fp.mul RNE (fp.abs (fp.neg (fp.add RNE x3 (fp.abs x9)))) x11) (fp.sub RNE (fp.sub RNE (fp.mul RNE (fp.sub RNE (fp.mul RNE x14 x8) x1) x8) (fp.add RNE (fp.abs (fp.neg x4)) (fp.neg (fp.add RNE x14 x10)))) (fp.abs (fp.neg x4)))) (fp.sub RNE x6 (fp.neg (fp.neg (fp.neg (fp.sub RNE x5 (fp.sub RNE x13 x6))))))) (fp.abs x11))) (fp.neg (fp.sub RNE x11 (fp.add RNE (fp.add RNE (fp.mul RNE (fp.add RNE x10 (fp.abs (fp.add RNE (fp.mul RNE x13 x4) (fp.sub RNE x6 x6)))) (fp.add RNE (fp.add RNE (fp.sub RNE x7 (fp.mul RNE x3 x1)) (fp.add RNE (fp.sub RNE x6 x0) (fp.add RNE x2 x0))) (fp.sub RNE (fp.add RNE (fp.add RNE x7 x3) (fp.neg x3)) (fp.mul RNE (fp.add RNE x14 x9) (fp.neg x10))))) x4) (fp.neg (fp.sub RNE (fp.add RNE (fp.neg (fp.abs (fp.sub RNE x11 x1))) (fp.neg x12)) (fp.mul RNE x12 (fp.neg (fp.add RNE x5 (fp.abs x4)))))))))))
(check-sat)