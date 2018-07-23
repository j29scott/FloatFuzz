;  time  = 60
;  terms = 12
;  score = 60
;  stdout= timeout

(fp.lt (fp.rem (fp.sqrt RNE x1) (fp.fma RNE x0 x2 x1)) (fp.roundToIntegral RNE (fp.rem x1 x1)))