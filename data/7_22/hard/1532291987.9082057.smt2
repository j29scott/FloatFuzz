;  time  = 60
;  terms = 7
;  score = 60
;  stdout= timeout

(fp.lt (fp.sqrt RNE (fp.roundToIntegral RNE x0)) (fp.rem (fp.rem x1 (fp.max x0 x1)) (fp.add RNE (fp.rem x1 x1) (fp.rem x1 x0))))