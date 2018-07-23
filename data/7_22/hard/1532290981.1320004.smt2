;  time  = 60
;  terms = 12
;  score = 60
;  stdout= timeout

(fp.leq (fp.rem (fp.rem x1 (fp.fma RNE x2 x2 x0)) (fp.sub RNE (fp.rem x1 x2) (fp.fma RNE x0 x1 x1))) (fp.div RNE (fp.mul RNE x1 x1) (fp.fma RNE x2 x2 x2)))