;  time  = 60
;  terms = 8
;  score = 60
;  stdout= timeout

(fp.gt (fp.rem (fp.rem x2 x0) (fp.add RNE (fp.fma RNE x1 x2 x1) (fp.rem x1 x0))) (fp.roundToIntegral RNE (fp.neg x1)))