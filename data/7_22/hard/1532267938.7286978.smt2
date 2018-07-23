;  time  = 60
;  terms = 11
;  score = 60
;  stdout= timeout

(fp.eq (fp.rem (fp.rem x2 (fp.rem x2 x2)) (fp.add RNE (fp.roundToIntegral RNE x1) (fp.add RNE x0 x1))) (fp.min (fp.roundToIntegral RNE x1) (fp.rem x1 x1)))