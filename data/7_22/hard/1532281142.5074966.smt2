;  time  = 54.78929114341736
;  terms = 10
;  score = 54.78929114341736
;  stdout= sat

(fp.leq (fp.mul RNE (fp.rem x1 (fp.add RNE x0 x0)) (fp.rem x1 (fp.roundToIntegral RNE x2))) (fp.rem (fp.add RNE x2 x1) (fp.fma RNE (fp.fma RNE x0 x0 x1) (fp.rem x0 x1) (fp.fma RNE x0 x1 x2))))