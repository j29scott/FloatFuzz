;  time  = 60
;  terms = 14
;  score = 60
;  stdout= timeout

(fp.eq (fp.rem (fp.sqrt RNE x0) (fp.fma RNE x1 x0 x1)) (fp.rem (fp.rem x2 x2) (fp.roundToIntegral RNE x2)))