;  time  = 60
;  terms = 12
;  score = 60
;  stdout= timeout

(fp.gt (fp.mul RNE (fp.rem x0 x1) (fp.roundToIntegral RNE x1)) (fp.rem (fp.abs x0) (fp.rem x2 (fp.rem x2 x0))))