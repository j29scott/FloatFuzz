;  time  = 60
;  terms = 16
;  score = 60
;  stdout= timeout

(fp.lt (fp.fma RNE (fp.sqrt RNE x2) (fp.roundToIntegral RNE x2) (fp.rem x2 (fp.roundToIntegral RNE x2))) (fp.rem (fp.min x2 x0) (fp.rem x1 (fp.roundToIntegral RNE x0))))