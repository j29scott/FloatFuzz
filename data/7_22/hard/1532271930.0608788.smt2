;  time  = 60
;  terms = 12
;  score = 60
;  stdout= timeout

(fp.gt (fp.rem (fp.rem x1 (fp.rem x0 x2)) (fp.fma RNE x2 x1 x2)) (fp.roundToIntegral RNE (fp.sub RNE x1 x0)))