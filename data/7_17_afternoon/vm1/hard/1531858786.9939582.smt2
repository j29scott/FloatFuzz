;  time  = 600
;  chars = 913
;  score = 0.8719135802469136
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
(assert (fp.isSubnormal (fp.add RNE (fp.sub RNE (fp.add RNE (fp.abs (fp.abs (fp.add RNE (fp.abs (fp.add RNE (fp.add RNE x3 x12) (fp.abs x0))) (fp.sub RNE x10 (fp.add RNE (fp.mul RNE x14 x13) (fp.abs x9)))))) (fp.mul RNE (fp.abs (fp.sub RNE (fp.neg (fp.sub RNE (fp.abs x6) (fp.sub RNE x14 x9))) (fp.neg x11))) (fp.mul RNE (fp.mul RNE (fp.sub RNE x13 (fp.neg x3)) (fp.mul RNE (fp.abs x2) x7)) x6))) (fp.add RNE x10 (fp.add RNE (fp.add RNE (fp.sub RNE x3 (fp.sub RNE (fp.abs (fp.mul RNE x12 x9)) (fp.abs (fp.abs x5)))) (fp.abs (fp.abs (fp.sub RNE (fp.add RNE x0 x8) (fp.sub RNE x2 x7))))) x0))) (fp.neg (fp.sub RNE x12 (fp.abs (fp.mul RNE (fp.mul RNE (fp.sub RNE (fp.mul RNE (fp.abs x2) (fp.add RNE x3 x5)) (fp.sub RNE (fp.mul RNE x10 x4) (fp.abs x12))) (fp.abs (fp.abs (fp.add RNE x9 x8)))) (fp.add RNE (fp.mul RNE x3 (fp.mul RNE x7 (fp.neg x9))) (fp.add RNE (fp.abs (fp.sub RNE x1 x8)) (fp.neg (fp.sub RNE x8 x10)))))))))))
(check-sat)