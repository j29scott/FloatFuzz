;  time  = 600
;  terms = 87
;  score = 0.6329113924050633
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
(assert (fp.isSubnormal (fp.sub RNE (fp.sub RNE (fp.neg (fp.mul RNE (fp.sub RNE (fp.mul RNE (fp.neg x6) (fp.add RNE (fp.abs (fp.add RNE x1 x0)) x14)) (fp.abs (fp.sub RNE x9 (fp.mul RNE (fp.mul RNE x11 x3) (fp.add RNE x14 x1))))) x11)) (fp.neg x11)) (fp.add RNE (fp.mul RNE (fp.neg (fp.neg (fp.add RNE (fp.abs (fp.abs x6)) x14))) x3) (fp.sub RNE x14 (fp.sub RNE (fp.sub RNE (fp.sub RNE (fp.abs (fp.mul RNE (fp.neg x9) (fp.mul RNE x10 x12))) (fp.add RNE x11 (fp.sub RNE (fp.add RNE x5 x11) (fp.abs x14)))) (fp.add RNE (fp.abs x3) (fp.add RNE x9 x14))) (fp.sub RNE (fp.add RNE (fp.add RNE (fp.sub RNE x0 x8) (fp.sub RNE (fp.mul RNE x2 x6) (fp.abs x10))) (fp.neg (fp.abs (fp.neg x5)))) (fp.sub RNE (fp.abs x8) (fp.abs (fp.abs (fp.neg x10)))))))))))
(check-sat)