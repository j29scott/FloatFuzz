;  time  = 60
;  terms = 17
;  score = 60
;  stdout= timeout

(fp.geq (fp.fma RNE (fp.div RNE x0 x1) (fp.rem x0 (fp.sub RNE x1 x2)) (fp.roundToIntegral RNE x2)) (fp.rem (fp.rem x1 x1) (fp.rem x2 x0)))