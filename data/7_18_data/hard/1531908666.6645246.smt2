;  time  = 600
;  terms = 89
;  score = 0.5781990521327014
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
(assert (fp.isSubnormal (fp.add RNE (fp.add RNE x13 (fp.abs (fp.add RNE (fp.sub RNE (fp.add RNE x10 x7) (fp.abs (fp.mul RNE x9 (fp.abs x13)))) x14))) (fp.neg (fp.add RNE (fp.add RNE x13 (fp.sub RNE (fp.sub RNE (fp.sub RNE (fp.mul RNE x14 (fp.abs x11)) (fp.sub RNE (fp.neg x2) (fp.mul RNE x11 x1))) x7) (fp.sub RNE (fp.add RNE (fp.add RNE x6 (fp.neg x0)) (fp.sub RNE x11 (fp.neg x2))) (fp.abs (fp.neg (fp.add RNE x6 x6)))))) (fp.add RNE x8 (fp.add RNE (fp.mul RNE (fp.mul RNE (fp.mul RNE (fp.sub RNE x6 x6) (fp.abs x11)) (fp.abs (fp.sub RNE x1 x12))) (fp.mul RNE (fp.mul RNE x8 x3) (fp.add RNE x13 x1))) (fp.mul RNE (fp.mul RNE (fp.neg x3) (fp.neg (fp.mul RNE x4 x5))) (fp.add RNE (fp.mul RNE (fp.abs x11) (fp.mul RNE x7 x6)) (fp.add RNE x3 x4))))))))))
(check-sat)