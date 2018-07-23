;  time  = 60
;  terms = 10
;  score = 60
;  stdout= timeout

(fp.geq (fp.rem (fp.div RNE x1 x1) (fp.rem (fp.sub RNE x2 x1) (fp.roundToIntegral RNE x1))) (fp.rem (fp.roundToIntegral RNE x0) (fp.sqrt RNE x1)))