;  time  = 60
;  terms = 14
;  score = 60
;  stdout= timeout

(fp.leq (fp.div RNE (fp.mul RNE x1 x2) (fp.rem x0 x1)) (fp.sub RNE (fp.rem x0 x1) (fp.fma RNE x1 (fp.roundToIntegral RNE x0) (fp.rem x2 x1))))