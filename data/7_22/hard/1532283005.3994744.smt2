;  time  = 60
;  terms = 8
;  score = 60
;  stdout= timeout

(fp.lt (fp.rem (fp.rem x2 x0) (fp.rem (fp.abs x1) (fp.add RNE x2 x2))) (fp.rem (fp.rem x1 (fp.rem x1 x0)) (fp.roundToIntegral RNE (fp.abs x0))))