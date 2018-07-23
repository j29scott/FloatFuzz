;  time  = 60
;  terms = 12
;  score = 60
;  stdout= timeout

(fp.eq (fp.add RNE (fp.rem x2 x2) (fp.rem x1 x1)) (fp.rem (fp.rem x2 x0) (fp.rem (fp.sqrt RNE x0) (fp.roundToIntegral RNE x1))))