;  time  = 60
;  terms = 7
;  score = 60
;  stdout= timeout

(fp.lt (fp.sqrt RNE (fp.rem x0 (fp.min x2 x1))) (fp.rem (fp.abs x1) (fp.rem (fp.roundToIntegral RNE x2) (fp.div RNE x1 x2))))