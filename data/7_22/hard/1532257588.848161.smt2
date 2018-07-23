;  time  = 60
;  terms = 13
;  score = 60
;  stdout= timeout

(fp.leq (fp.rem (fp.roundToIntegral RNE x0) (fp.rem (fp.rem x1 x0) (fp.rem x1 x1))) (fp.fma RNE (fp.rem x1 x1) (fp.rem x1 x1) (fp.rem x1 (fp.fma RNE x2 x1 x2))))