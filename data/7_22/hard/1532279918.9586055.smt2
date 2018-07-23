;  time  = 60
;  terms = 11
;  score = 60
;  stdout= timeout

(fp.gt (fp.rem (fp.roundToIntegral RNE x0) (fp.rem (fp.rem x0 x2) (fp.sqrt RNE x1))) (fp.rem (fp.roundToIntegral RNE x2) (fp.neg x0)))