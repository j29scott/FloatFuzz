(set-logic QF_FP)
(declare-const x Float32)
(declare-const y Float32)
(declare-const z Float32)

(assert (and (not (fp.isNaN x))       (not (fp.isNaN y))      (not (fp.isNaN z))))
(assert (and (not (fp.isInfinite x))  (not (fp.isInfinite y)) (not (fp.isInfinite z))))


(assert 
	(fp.eq 
		(fp.add RNE (fp.add RNE x y) z)
		(fp.add RNE x (fp.add RNE y z))
	)
)
(check-sat)
(get-model)
