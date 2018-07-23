;  time  = 60
;  terms = 14
;  score = 60
;  stdout= timeout

(fp.geq (fp.sub RNE (fp.fma RNE x1 x2 x1) (fp.sqrt RNE x0)) (fp.rem (fp.roundToIntegral RNE x2) (fp.mul RNE x1 x2)))