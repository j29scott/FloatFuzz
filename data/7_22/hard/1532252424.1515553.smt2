;  time  = 56.69636344909668
;  terms = 15
;  score = 56.69636344909668
;  stdout= unsat

(fp.isSubnormal (fp.fma RNE (fp.roundToIntegral RNE x0) (fp.add RNE (fp.div RNE x2 x2) (fp.max x2 x0)) (fp.sqrt RNE (fp.rem x2 x1))))