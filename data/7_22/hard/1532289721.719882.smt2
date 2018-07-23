;  time  = 60
;  terms = 6
;  score = 60
;  stdout= timeout

(fp.isSubnormal (fp.rem (fp.fma RNE x0 x2 x1) (fp.roundToIntegral RNE (fp.add RNE x0 x0))))