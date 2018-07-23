;  time  = 60
;  terms = 9
;  score = 60
;  stdout= timeout

(fp.eq (fp.rem (fp.div RNE x1 x2) (fp.add RNE (fp.min x2 x2) (fp.rem x0 x1))) (fp.roundToIntegral RNE (fp.rem x1 x2)))