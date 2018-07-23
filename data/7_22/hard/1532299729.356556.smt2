;  time  = 60
;  terms = 13
;  score = 60
;  stdout= timeout

(fp.gt (fp.add RNE (fp.rem x1 (fp.rem x2 x1)) (fp.roundToIntegral RNE x0)) (fp.rem (fp.rem x1 x0) (fp.rem x0 (fp.rem x1 x1))))