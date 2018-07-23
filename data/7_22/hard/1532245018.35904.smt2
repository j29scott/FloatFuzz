;  time  = 60
;  terms = 12
;  score = 60
;  stdout= timeout

(fp.eq (fp.rem (fp.roundToIntegral RNE x2) (fp.roundToIntegral RNE x1)) (fp.sub RNE (fp.rem x2 x2) (fp.roundToIntegral RNE x2)))