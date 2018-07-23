;  time  = 60
;  terms = 12
;  score = 60
;  stdout= timeout

(fp.gt (fp.rem (fp.sub RNE x0 x1) (fp.roundToIntegral RNE x1)) (fp.add RNE (fp.abs x0) (fp.rem x2 (fp.div RNE x0 x0))))