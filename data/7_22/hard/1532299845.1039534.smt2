;  time  = 60
;  terms = 12
;  score = 60
;  stdout= timeout

(fp.lt (fp.rem (fp.div RNE x0 x1) (fp.abs x0)) (fp.rem (fp.sqrt RNE x0) (fp.rem x0 (fp.roundToIntegral RNE x1))))