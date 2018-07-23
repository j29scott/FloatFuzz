;  time  = 60
;  terms = 10
;  score = 60
;  stdout= timeout

(fp.geq (fp.rem (fp.div RNE x1 x1) (fp.rem (fp.rem x1 x0) (fp.rem x1 x2))) (fp.rem (fp.roundToIntegral RNE x0) (fp.rem x1 (fp.mul RNE x1 x2))))