;  time  = 60
;  terms = 16
;  score = 60
;  stdout= timeout

(fp.geq (fp.fma RNE (fp.rem x1 (fp.rem x2 x0)) (fp.min x1 x0) (fp.div RNE x2 x0)) (fp.sub RNE (fp.div RNE x2 x0) (fp.roundToIntegral RNE x1)))