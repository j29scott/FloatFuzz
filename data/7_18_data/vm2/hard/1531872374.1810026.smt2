;  time  = 600
;  terms = 125
;  score = 0.4834710743801653
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
(assert (fp.isZero (fp.add RNE (fp.sub RNE x12 (fp.add RNE (fp.neg (fp.sub RNE x9 (fp.abs x13))) (fp.mul RNE (fp.mul RNE (fp.sub RNE (fp.add RNE x12 (fp.mul RNE (fp.abs x11) (fp.neg x9))) (fp.sub RNE (fp.mul RNE x13 (fp.abs x6)) (fp.abs (fp.sub RNE x1 x7)))) x1) (fp.sub RNE (fp.sub RNE x12 (fp.sub RNE (fp.add RNE (fp.mul RNE x0 x3) (fp.abs x3)) (fp.neg x1))) (fp.neg (fp.sub RNE x13 (fp.add RNE x12 x9))))))) (fp.mul RNE (fp.add RNE x13 (fp.add RNE (fp.abs (fp.sub RNE x7 (fp.mul RNE (fp.mul RNE (fp.sub RNE x7 x6) (fp.mul RNE x8 x13)) (fp.add RNE (fp.sub RNE x11 x12) (fp.neg x8))))) (fp.mul RNE (fp.mul RNE (fp.add RNE (fp.sub RNE (fp.add RNE x8 x1) (fp.sub RNE x3 x6)) (fp.mul RNE (fp.abs x14) (fp.sub RNE x3 x14))) (fp.sub RNE (fp.add RNE (fp.sub RNE x0 x5) (fp.abs x4)) x4)) (fp.sub RNE (fp.sub RNE (fp.add RNE (fp.abs x3) (fp.add RNE x3 x10)) (fp.neg (fp.mul RNE x2 x9))) (fp.sub RNE (fp.add RNE (fp.mul RNE x12 x14) (fp.abs x3)) (fp.add RNE (fp.abs x12) (fp.abs x14))))))) (fp.add RNE x8 (fp.mul RNE (fp.add RNE (fp.neg x5) x11) x11))))))
(check-sat)