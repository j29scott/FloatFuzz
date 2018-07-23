;  time  = 60
;  terms = 6
;  score = 60
;  stdout= timeout

(fp.isNormal (fp.rem (fp.rem x0 x2) (fp.fma RNE (fp.rem x2 x0) (fp.roundToIntegral RNE x1) (fp.add RNE x0 x1))))