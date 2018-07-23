;  time  = 60
;  terms = 14
;  score = 60
;  stdout= timeout

(fp.geq (fp.sub RNE (fp.fma RNE x1 x2 x1) (fp.rem x0 (fp.sub RNE x1 x2))) (fp.rem (fp.roundToIntegral RNE x2) (fp.mul RNE x0 x2)))