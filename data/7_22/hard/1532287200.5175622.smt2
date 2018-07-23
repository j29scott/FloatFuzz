;  time  = 60
;  terms = 10
;  score = 60
;  stdout= timeout

(fp.gt (fp.rem (fp.roundToIntegral RNE x1) (fp.rem (fp.rem x1 x0) (fp.rem x2 x0))) (fp.rem (fp.neg x2) (fp.max x1 x2)))