;  time  = 60
;  terms = 15
;  score = 60
;  stdout= timeout

(fp.leq (fp.mul RNE (fp.roundToIntegral RNE x2) (fp.fma RNE x0 x1 x1)) (fp.div RNE (fp.div RNE x0 x2) (fp.rem x0 x1)))