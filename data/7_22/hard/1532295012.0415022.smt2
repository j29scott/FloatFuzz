;  time  = 60
;  terms = 14
;  score = 60
;  stdout= timeout

(fp.leq (fp.rem (fp.min x1 x2) (fp.rem x2 x2)) (fp.rem (fp.roundToIntegral RNE x2) (fp.abs x1)))