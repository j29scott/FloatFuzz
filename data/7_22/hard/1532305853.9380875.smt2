;  time  = 60
;  terms = 13
;  score = 60
;  stdout= timeout

(fp.geq (fp.rem (fp.rem x0 x2) (fp.roundToIntegral RNE (fp.div RNE x2 x2))) (fp.rem (fp.rem x1 x0) (fp.rem (fp.div RNE x0 x1) (fp.rem x2 x2))))