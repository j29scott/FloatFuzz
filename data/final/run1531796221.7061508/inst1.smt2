;  time  = 277.57832431793213
;  chars = 1429
;  score = 0.36043560430833665
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
(assert (fp.gt x10 (fp.abs (fp.mul RNE (fp.abs (fp.add RNE (fp.mul RNE x3 (fp.mul RNE (fp.neg (fp.sub RNE (fp.sub RNE x13 x14) (fp.neg x6))) (fp.mul RNE (fp.sub RNE (fp.sub RNE x8 x9) x3) x9))) (fp.add RNE (fp.mul RNE (fp.add RNE (fp.mul RNE x10 (fp.add RNE x13 x0)) (fp.abs x8)) (fp.add RNE (fp.abs (fp.add RNE x4 x14)) (fp.mul RNE (fp.add RNE x3 x14) (fp.add RNE x5 x8)))) (fp.neg (fp.mul RNE (fp.abs x9) (fp.sub RNE x7 (fp.abs x12))))))) (fp.neg x8)))))
(check-sat)