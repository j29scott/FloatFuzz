;  time  = 600
;  terms = 86
;  score = 0.5473684210526316
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
(assert (fp.isSubnormal (fp.mul RNE (fp.add RNE (fp.abs (fp.add RNE (fp.add RNE (fp.neg (fp.abs x5)) (fp.mul RNE (fp.abs (fp.abs x3)) (fp.neg (fp.neg (fp.mul RNE x0 x13))))) (fp.sub RNE x2 (fp.mul RNE (fp.add RNE x0 (fp.add RNE (fp.abs x6) (fp.sub RNE x1 x7))) (fp.add RNE (fp.abs (fp.neg x7)) x4))))) (fp.abs (fp.add RNE (fp.mul RNE (fp.abs (fp.mul RNE (fp.add RNE (fp.neg x9) (fp.neg x3)) (fp.abs (fp.mul RNE x1 x5)))) (fp.sub RNE x3 (fp.add RNE x14 (fp.mul RNE (fp.sub RNE x10 x7) (fp.abs x10))))) (fp.add RNE x2 (fp.sub RNE (fp.mul RNE (fp.add RNE x11 (fp.neg x7)) x11) (fp.sub RNE x3 (fp.add RNE (fp.abs x7) (fp.abs x7)))))))) (fp.abs (fp.abs (fp.sub RNE (fp.neg x2) (fp.sub RNE x11 (fp.mul RNE x9 (fp.abs (fp.neg x6))))))))))
(check-sat)