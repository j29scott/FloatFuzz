;  time  = 60
;  terms = 8
;  score = 60
;  stdout= timeout

(fp.leq (fp.roundToIntegral RNE (fp.rem x2 (fp.sqrt RNE x1))) (fp.rem (fp.rem x1 x1) (fp.sqrt RNE (fp.fma RNE x2 x2 x1))))