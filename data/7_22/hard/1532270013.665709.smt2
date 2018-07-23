;  time  = 60
;  terms = 8
;  score = 60
;  stdout= timeout

(fp.leq (fp.rem (fp.max x2 x2) (fp.abs (fp.abs x2))) (fp.rem (fp.rem x2 (fp.roundToIntegral RNE x0)) (fp.sub RNE (fp.rem x1 x0) (fp.rem x0 x0))))