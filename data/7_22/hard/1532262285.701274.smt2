;  time  = 60
;  terms = 11
;  score = 60
;  stdout= timeout

(fp.gt (fp.rem (fp.mul RNE x1 x0) (fp.roundToIntegral RNE (fp.rem x0 x1))) (fp.mul RNE (fp.roundToIntegral RNE x0) (fp.rem x0 x2)))