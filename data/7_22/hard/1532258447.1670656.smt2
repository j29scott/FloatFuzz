;  time  = 60
;  terms = 8
;  score = 60
;  stdout= timeout

(fp.eq (fp.roundToIntegral RNE (fp.rem x2 x2)) (fp.rem (fp.rem x0 (fp.rem x2 x1)) (fp.fma RNE (fp.rem x0 x1) (fp.rem x2 x0) (fp.mul RNE x0 x2))))