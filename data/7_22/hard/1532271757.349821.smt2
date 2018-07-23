;  time  = 60
;  terms = 10
;  score = 60
;  stdout= timeout

(fp.eq (fp.rem (fp.div RNE x1 x2) (fp.sqrt RNE x2)) (fp.roundToIntegral RNE (fp.rem x0 (fp.rem x2 x1))))