;  time  = 56.795008182525635
;  terms = 13
;  score = 56.795008182525635
;  stdout= sat

(fp.gt (fp.fma RNE (fp.rem x0 x2) (fp.roundToIntegral RNE x1) (fp.rem (fp.rem x2 x2) (fp.add RNE x0 x2))) (fp.rem (fp.rem x0 x2) (fp.fma RNE x0 (fp.max x0 x2) (fp.rem x0 x2))))