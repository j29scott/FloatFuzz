;  time  = 60
;  terms = 8
;  score = 60
;  stdout= timeout

(fp.leq (fp.rem (fp.max x2 x2) (fp.neg (fp.roundToIntegral RNE x0))) (fp.rem (fp.abs x2) (fp.max (fp.neg x1) (fp.rem x1 x0))))