;  time  = 60
;  terms = 13
;  score = 60
;  stdout= timeout

(fp.eq (fp.sub RNE (fp.rem x0 x0) (fp.rem x2 (fp.roundToIntegral RNE x1))) (fp.rem (fp.rem x1 x1) (fp.rem x1 (fp.rem x2 x1))))