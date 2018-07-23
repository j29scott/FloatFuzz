;  time  = 60
;  terms = 9
;  score = 60
;  stdout= timeout

(fp.lt (fp.rem (fp.max x1 x1) (fp.rem (fp.roundToIntegral RNE x1) (fp.mul RNE x0 x0))) (fp.rem (fp.rem x1 x2) (fp.sub RNE (fp.abs x1) (fp.rem x2 x2))))