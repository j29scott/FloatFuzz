;  time  = 60
;  terms = 10
;  score = 60
;  stdout= timeout

(fp.isNaN (fp.fma RNE (fp.roundToIntegral RNE x2) (fp.fma RNE x0 x0 (fp.rem x2 x1)) (fp.rem x1 x0)))