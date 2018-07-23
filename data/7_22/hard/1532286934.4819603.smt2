;  time  = 60
;  terms = 12
;  score = 60
;  stdout= timeout

(fp.lt (fp.mul RNE (fp.rem x2 x0) (fp.roundToIntegral RNE x0)) (fp.rem (fp.fma RNE x2 x1 x1) (fp.rem (fp.div RNE x1 x0) (fp.sqrt RNE x0))))