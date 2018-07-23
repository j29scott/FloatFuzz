;  time  = 60
;  terms = 12
;  score = 60
;  stdout= timeout

(fp.lt (fp.rem (fp.sqrt RNE x1) (fp.rem x2 (fp.add RNE x0 x1))) (fp.add RNE (fp.rem x2 (fp.roundToIntegral RNE x1)) (fp.add RNE x1 x1)))