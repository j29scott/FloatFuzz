;  time  = 60
;  terms = 8
;  score = 60
;  stdout= timeout

(fp.leq (fp.roundToIntegral RNE (fp.rem x0 x2)) (fp.rem (fp.rem x2 (fp.abs x1)) (fp.rem (fp.mul RNE x2 x0) (fp.abs x1))))