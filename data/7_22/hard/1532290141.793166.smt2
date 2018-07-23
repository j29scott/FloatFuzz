;  time  = 60
;  terms = 10
;  score = 60
;  stdout= timeout

(fp.geq (fp.max (fp.rem x0 (fp.mul RNE x2 x2)) (fp.rem x2 (fp.roundToIntegral RNE x1))) (fp.rem (fp.rem x0 x1) (fp.neg (fp.rem x0 x2))))