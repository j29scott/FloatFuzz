;  time  = 60
;  terms = 8
;  score = 60
;  stdout= timeout

(fp.isSubnormal (fp.fma RNE (fp.rem x2 x1) (fp.min x1 x2) (fp.fma RNE (fp.roundToIntegral RNE x1) (fp.sqrt RNE x0) (fp.max x1 x2))))