;  time  = 60
;  terms = 17
;  score = 60
;  stdout= timeout

(fp.eq (fp.sub RNE (fp.roundToIntegral RNE x2) (fp.fma RNE x1 x1 x2)) (fp.rem (fp.div RNE x1 x2) (fp.rem x2 x0)))