;  time  = 60
;  terms = 4
;  score = 60
;  stdout= timeout

(fp.isNaN (fp.rem (fp.rem x2 (fp.rem x1 x2)) (fp.roundToIntegral RNE (fp.min x1 x2))))