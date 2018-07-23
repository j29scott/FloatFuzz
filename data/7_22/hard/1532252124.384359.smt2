;  time  = 60
;  terms = 14
;  score = 60
;  stdout= timeout

(fp.gt (fp.min (fp.rem x2 x1) (fp.roundToIntegral RNE x2)) (fp.max (fp.rem x1 x0) (fp.mul RNE x2 x1)))