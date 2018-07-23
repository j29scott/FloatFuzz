;  time  = 58.205628395080566
;  terms = 5
;  score = 58.205628395080566
;  stdout= sat

(fp.isPositive (fp.fma RNE (fp.fma RNE x0 x1 (fp.neg x2)) (fp.fma RNE (fp.sub RNE x1 x2) (fp.sub RNE x2 x0) (fp.neg x0)) (fp.div RNE (fp.rem x1 x2) (fp.neg x0))))