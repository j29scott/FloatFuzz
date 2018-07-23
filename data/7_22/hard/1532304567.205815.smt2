;  time  = 60
;  terms = 13
;  score = 60
;  stdout= timeout

(fp.lt (fp.sub RNE (fp.roundToIntegral RNE x1) (fp.rem x1 x0)) (fp.rem (fp.rem x2 (fp.fma RNE x1 x1 x2)) (fp.rem x1 x0)))