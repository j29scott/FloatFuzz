;  time  = 54.08484959602356
;  terms = 10
;  score = 54.08484959602356
;  stdout= sat

(fp.leq (fp.fma RNE (fp.rem x1 (fp.rem x0 x1)) (fp.min (fp.neg x1) (fp.fma RNE x2 x0 x1)) (fp.rem (fp.fma RNE x1 x0 x2) (fp.fma RNE x1 x0 x0))) (fp.rem (fp.roundToIntegral RNE x0) (fp.max x2 x0)))