;  time  = 60
;  terms = 11
;  score = 60
;  stdout= timeout

(fp.lt (fp.rem (fp.rem x0 (fp.rem x2 x1)) (fp.mul RNE x0 x1)) (fp.rem (fp.rem x0 x2) (fp.roundToIntegral RNE (fp.roundToIntegral RNE x0))))