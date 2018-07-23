;  time  = 60
;  terms = 10
;  score = 60
;  stdout= timeout

(fp.leq (fp.fma RNE (fp.rem x1 (fp.rem x0 x1)) (fp.min (fp.neg x1) (fp.abs x2)) (fp.abs (fp.abs x1))) (fp.rem (fp.roundToIntegral RNE x0) (fp.max x2 x0)))