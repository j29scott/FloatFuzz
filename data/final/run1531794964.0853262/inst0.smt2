;  time  = 600
;  chars = 153
;  score = 0.9741466711726935
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
(assert (fp.isNormal (fp.neg (fp.abs (fp.abs (fp.sub RNE (fp.add RNE (fp.mul RNE (fp.neg x2) x7) (fp.add RNE (fp.mul RNE x8 (fp.mul RNE (fp.neg x3) (fp.abs x6))) (fp.sub RNE x5 (fp.sub RNE x14 x10)))) x6))))))
(check-sat)