;  time  = 60
;  terms = 10
;  score = 60
;  stdout= timeout

(fp.geq (fp.rem (fp.rem x0 x2) (fp.roundToIntegral RNE (fp.min x2 x2))) (fp.rem (fp.fma RNE x0 x0 x0) (fp.fma RNE (fp.rem x1 x0) (fp.rem x0 x2) (fp.rem x2 x0))))