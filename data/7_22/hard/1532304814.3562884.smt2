;  time  = 60
;  terms = 11
;  score = 60
;  stdout= timeout

(fp.lt (fp.rem (fp.mul RNE x0 x2) (fp.rem x1 (fp.roundToIntegral RNE x2))) (fp.rem (fp.sub RNE x1 x1) (fp.roundToIntegral RNE (fp.rem x0 x2))))