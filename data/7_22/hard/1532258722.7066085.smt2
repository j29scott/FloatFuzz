;  time  = 60
;  terms = 9
;  score = 60
;  stdout= timeout

(fp.gt (fp.neg (fp.sqrt RNE x1)) (fp.rem (fp.fma RNE x2 x1 x2) (fp.mul RNE (fp.rem x2 x0) (fp.roundToIntegral RNE x0))))