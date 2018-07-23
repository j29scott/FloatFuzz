;  time  = 60
;  terms = 10
;  score = 60
;  stdout= timeout

(fp.eq (fp.div RNE (fp.rem x0 x2) (fp.roundToIntegral RNE x1)) (fp.rem (fp.neg x2) (fp.rem (fp.sqrt RNE x0) (fp.rem x2 x1))))