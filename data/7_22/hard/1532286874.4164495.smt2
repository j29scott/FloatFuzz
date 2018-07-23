;  time  = 60
;  terms = 12
;  score = 60
;  stdout= timeout

(fp.lt (fp.rem (fp.min x2 x0) (fp.rem x0 (fp.max x2 x2))) (fp.rem (fp.fma RNE x2 x1 x1) (fp.roundToIntegral RNE (fp.div RNE x1 x0))))