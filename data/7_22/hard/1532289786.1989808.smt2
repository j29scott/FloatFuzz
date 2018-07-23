;  time  = 60
;  terms = 14
;  score = 60
;  stdout= timeout

(fp.leq (fp.div RNE (fp.roundToIntegral RNE x0) (fp.rem x2 x2)) (fp.rem (fp.neg x0) (fp.fma RNE x2 x0 x0)))