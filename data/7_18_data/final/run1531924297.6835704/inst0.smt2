;  time  = 600
;  terms = 2
;  score = 0.991869918699187
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
(assert (fp.isSubnormal (fp.mul RNE (fp.add RNE (fp.add RNE (fp.add RNE (fp.sub RNE (fp.sub RNE (fp.sub RNE (fp.neg x14) x4) (fp.neg x0)) (fp.sub RNE x3 (fp.abs (fp.neg (fp.sub RNE x11 x5))))) x3) (fp.mul RNE (fp.mul RNE x1 (fp.neg (fp.sub RNE (fp.add RNE (fp.sub RNE x7 x12) (fp.neg x13)) (fp.neg x12)))) (fp.mul RNE x8 x4))) x4) x3)))
(check-sat)