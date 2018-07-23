;  time  = 60
;  terms = 14
;  score = 60
;  stdout= timeout

(fp.lt (fp.rem (fp.fma RNE x0 x0 x0) (fp.rem x1 x0)) (fp.add RNE (fp.roundToIntegral RNE x1) (fp.rem x2 (fp.rem x2 x1))))