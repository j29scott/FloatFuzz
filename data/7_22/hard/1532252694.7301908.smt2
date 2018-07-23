;  time  = 60
;  terms = 15
;  score = 60
;  stdout= timeout

(fp.isSubnormal (fp.fma RNE (fp.roundToIntegral RNE x0) (fp.add RNE (fp.div RNE x2 x2) (fp.max x1 x0)) (fp.sqrt RNE (fp.rem x2 x1))))