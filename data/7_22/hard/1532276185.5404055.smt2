;  time  = 60
;  terms = 11
;  score = 60
;  stdout= timeout

(fp.eq (fp.rem (fp.abs x0) (fp.max x0 x2)) (fp.rem (fp.rem x0 x2) (fp.roundToIntegral RNE (fp.sub RNE x0 x1))))