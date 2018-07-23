;  time  = 60
;  terms = 10
;  score = 60
;  stdout= timeout

(fp.geq (fp.rem (fp.rem x0 (fp.roundToIntegral RNE x0)) (fp.roundToIntegral RNE x2)) (fp.rem (fp.rem x0 x1) (fp.rem (fp.rem x2 x2) (fp.div RNE x0 x2))))