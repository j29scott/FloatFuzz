(set-logic QF_FP)
(declare-fun v0 () ( _ FloatingPoint 8 24))
(declare-fun v1 () ( _ FloatingPoint 8 24))
(declare-fun v2 () ( _ FloatingPoint 8 24))
(assert (not (fp.isNaN v0)))
(assert (not (fp.isInfinite v0)))
(assert (not (fp.isZero v0)))
(assert (not (fp.isNaN v1)))
(assert (not (fp.isInfinite v1)))
(assert (not (fp.isZero v1)))
(assert (not (fp.isNaN v2)))
(assert (not (fp.isInfinite v2)))
(assert (not (fp.isZero v2)))
(assert (fp.leq (fp.sub RNE
   (fp.abs v2)
   (fp.sqrt RNE
   v1))
   (fp.sqrt RNE
   (fp.rem v2
   v1))))
(check-sat)
