;  time  = 60
;  terms = 9
;  score = 60
;  stdout= timeout

(fp.geq (fp.rem (fp.add RNE x1 x1) (fp.rem (fp.rem x0 x2) (fp.mul RNE x2 x0))) (fp.roundToIntegral RNE (fp.rem x2 x2)))