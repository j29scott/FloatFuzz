;  time  = 600
;  terms = 74
;  score = 0.6991869918699187
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
(assert (fp.isSubnormal (fp.mul RNE (fp.abs (fp.add RNE x12 (fp.mul RNE (fp.mul RNE (fp.abs (fp.abs x10)) (fp.sub RNE (fp.sub RNE (fp.sub RNE (fp.sub RNE x5 x0) (fp.add RNE x3 x3)) (fp.sub RNE x8 x11)) (fp.add RNE (fp.abs (fp.neg x13)) (fp.mul RNE (fp.mul RNE x12 x1) x11)))) (fp.mul RNE (fp.abs (fp.add RNE (fp.sub RNE (fp.abs x14) (fp.neg x4)) (fp.neg x10))) x4)))) (fp.add RNE x11 (fp.mul RNE (fp.add RNE (fp.abs x5) (fp.neg (fp.sub RNE (fp.add RNE (fp.add RNE x11 x5) (fp.sub RNE (fp.abs x13) (fp.abs x5))) x6))) (fp.neg (fp.neg (fp.neg (fp.mul RNE (fp.mul RNE x5 (fp.neg x9)) (fp.add RNE (fp.mul RNE x2 x12) (fp.neg x14)))))))))))
(check-sat)