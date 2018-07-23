;  time  = 60
;  terms = 13
;  score = 60
;  stdout= timeout

(fp.eq (fp.roundToIntegral RNE (fp.rem x2 x1)) (fp.rem (fp.sub RNE x1 x2) (fp.fma RNE x1 x2 x1)))