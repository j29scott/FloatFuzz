;  time  = 60
;  terms = 8
;  score = 60
;  stdout= timeout

(fp.gt (fp.roundToIntegral RNE (fp.abs x1)) (fp.rem (fp.rem x2 x1) (fp.rem (fp.neg x2) (fp.neg x1))))