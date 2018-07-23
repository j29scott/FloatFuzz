;  time  = 60
;  terms = 14
;  score = 60
;  stdout= timeout

(fp.lt (fp.rem (fp.abs x0) (fp.rem x2 x1)) (fp.rem (fp.roundToIntegral RNE x1) (fp.fma RNE x1 x2 x2)))