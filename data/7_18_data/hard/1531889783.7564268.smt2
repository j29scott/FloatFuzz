;  time  = 545.5040292739868
;  terms = 131
;  score = 0.33930872634267123
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
(assert (fp.eq (fp.abs (fp.sub RNE (fp.abs (fp.abs (fp.add RNE (fp.abs (fp.add RNE (fp.abs (fp.mul RNE x7 x9)) (fp.mul RNE (fp.add RNE x11 x3) (fp.add RNE x10 x13)))) (fp.abs (fp.sub RNE (fp.mul RNE (fp.sub RNE x6 x0) (fp.add RNE x1 x12)) (fp.abs x2)))))) (fp.add RNE (fp.abs (fp.abs (fp.abs (fp.add RNE (fp.add RNE (fp.mul RNE x6 x3) (fp.add RNE x2 x4)) (fp.add RNE x1 (fp.sub RNE x8 x5)))))) (fp.add RNE (fp.mul RNE (fp.abs (fp.mul RNE (fp.add RNE (fp.mul RNE x11 x4) (fp.mul RNE x4 x3)) x5)) (fp.neg x12)) (fp.neg (fp.mul RNE (fp.mul RNE (fp.mul RNE (fp.mul RNE x12 x2) (fp.neg x1)) (fp.mul RNE x7 (fp.add RNE x5 x6))) (fp.sub RNE (fp.add RNE (fp.abs x3) (fp.mul RNE x6 x7)) (fp.neg (fp.sub RNE x1 x13))))))))) (fp.neg (fp.add RNE (fp.abs (fp.abs (fp.sub RNE (fp.sub RNE (fp.abs (fp.neg (fp.sub RNE x11 x6))) x2) x9))) (fp.sub RNE (fp.add RNE (fp.add RNE x10 (fp.neg (fp.add RNE (fp.sub RNE x5 (fp.abs x2)) (fp.abs (fp.abs x7))))) (fp.add RNE (fp.abs (fp.abs (fp.sub RNE x5 (fp.add RNE x0 x14)))) (fp.abs (fp.abs (fp.add RNE (fp.mul RNE x11 x5) (fp.sub RNE x7 x13)))))) (fp.neg x1))))))
(check-sat)