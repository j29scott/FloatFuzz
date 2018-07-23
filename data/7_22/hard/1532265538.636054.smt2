;  time  = 60
;  terms = 9
;  score = 60
;  stdout= timeout

(fp.lt (fp.abs (fp.max x1 x1)) (fp.rem (fp.rem x1 x2) (fp.roundToIntegral RNE (fp.add RNE x2 x1))))