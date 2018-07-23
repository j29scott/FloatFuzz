;  time  = 60
;  terms = 11
;  score = 60
;  stdout= timeout

(fp.lt (fp.rem (fp.roundToIntegral RNE x2) (fp.add RNE (fp.fma RNE x0 x1 x0) (fp.max x1 x1))) (fp.mul RNE (fp.add RNE x2 x2) (fp.rem x0 x2)))