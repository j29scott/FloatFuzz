;  time  = 60
;  terms = 14
;  score = 60
;  stdout= timeout

(fp.geq (fp.rem (fp.div RNE x2 x1) (fp.sqrt RNE x0)) (fp.fma RNE (fp.roundToIntegral RNE x0) (fp.abs x0) (fp.roundToIntegral RNE x1)))