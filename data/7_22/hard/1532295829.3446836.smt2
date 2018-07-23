;  time  = 60
;  terms = 15
;  score = 60
;  stdout= timeout

(fp.eq (fp.div RNE (fp.fma RNE x0 x1 x1) (fp.rem x1 x0)) (fp.min (fp.roundToIntegral RNE x1) (fp.rem x2 x1)))