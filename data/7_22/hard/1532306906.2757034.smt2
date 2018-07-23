;  time  = 55.902273654937744
;  terms = 14
;  score = 55.902273654937744
;  stdout= sat

(fp.leq (fp.fma RNE (fp.mul RNE x1 x2) (fp.rem x0 x1) (fp.fma RNE (fp.neg x0) (fp.min x1 x2) (fp.neg x1))) (fp.sub RNE (fp.fma RNE x0 x1 (fp.fma RNE x0 x2 x0)) (fp.fma RNE x1 (fp.fma RNE x0 x0 x0) (fp.abs x2))))