;  time  = 60
;  terms = 17
;  score = 60
;  stdout= timeout

(fp.geq (fp.rem (fp.roundToIntegral RNE x2) (fp.max x0 x1)) (fp.fma RNE (fp.abs x0) (fp.fma RNE x0 x1 x0) (fp.max x0 x0)))