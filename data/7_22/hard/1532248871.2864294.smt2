;  time  = 60
;  terms = 14
;  score = 60
;  stdout= timeout

(fp.leq (fp.add RNE (fp.rem x0 x1) (fp.rem x0 x0)) (fp.rem (fp.add RNE x1 x2) (fp.roundToIntegral RNE x1)))