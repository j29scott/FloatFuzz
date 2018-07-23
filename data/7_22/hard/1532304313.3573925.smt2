;  time  = 60
;  terms = 8
;  score = 60
;  stdout= timeout

(fp.leq (fp.rem (fp.rem x0 (fp.roundToIntegral RNE x2)) (fp.abs (fp.rem x2 x1))) (fp.rem (fp.min x0 x1) (fp.max (fp.max x0 x1) (fp.add RNE x2 x1))))