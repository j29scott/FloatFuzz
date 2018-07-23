;  time  = 60
;  terms = 14
;  score = 60
;  stdout= timeout

(fp.leq (fp.div RNE (fp.rem x1 x2) (fp.rem x0 x1)) (fp.sub RNE (fp.rem x0 x1) (fp.rem x1 (fp.roundToIntegral RNE x0))))