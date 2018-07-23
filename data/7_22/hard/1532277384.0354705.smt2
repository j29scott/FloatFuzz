;  time  = 60
;  terms = 7
;  score = 60
;  stdout= timeout

(fp.gt (fp.rem (fp.abs x0) (fp.fma RNE (fp.add RNE x0 x0) (fp.rem x0 x0) (fp.roundToIntegral RNE x0))) (fp.roundToIntegral RNE (fp.rem x2 (fp.fma RNE x1 x1 x0))))