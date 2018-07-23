;  time  = 60
;  terms = 9
;  score = 60
;  stdout= timeout

(fp.gt (fp.rem (fp.rem x0 x2) (fp.roundToIntegral RNE (fp.mul RNE x2 x2))) (fp.min (fp.sqrt RNE x1) (fp.rem (fp.rem x1 x2) (fp.rem x0 x1))))