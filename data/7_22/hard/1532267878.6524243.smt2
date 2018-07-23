;  time  = 60
;  terms = 11
;  score = 60
;  stdout= timeout

(fp.eq (fp.neg (fp.roundToIntegral RNE x2)) (fp.rem (fp.rem x1 (fp.rem x2 x2)) (fp.fma RNE x1 x1 x1)))