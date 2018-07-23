;  time  = 60
;  terms = 13
;  score = 60
;  stdout= timeout

(fp.gt (fp.rem (fp.rem x0 x2) (fp.roundToIntegral RNE x1)) (fp.fma RNE (fp.fma RNE x0 x2 (fp.rem x2 x1)) (fp.fma RNE x0 (fp.max x0 x2) (fp.max x0 x2)) (fp.rem (fp.rem x0 x0) (fp.rem x2 x2))))