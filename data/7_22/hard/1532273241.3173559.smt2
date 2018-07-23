;  time  = 60
;  terms = 12
;  score = 60
;  stdout= timeout

(fp.lt (fp.roundToIntegral RNE (fp.rem x1 x0)) (fp.mul RNE (fp.fma RNE x1 x1 x1) (fp.rem x1 (fp.rem x2 x1))))