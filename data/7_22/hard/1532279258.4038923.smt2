;  time  = 60
;  terms = 13
;  score = 60
;  stdout= timeout

(fp.eq (fp.rem (fp.rem x2 x0) (fp.min (fp.roundToIntegral RNE x2) (fp.fma RNE x0 x2 x0))) (fp.fma RNE (fp.neg x1) (fp.rem x0 (fp.fma RNE x0 x0 x1)) (fp.div RNE x1 x1)))