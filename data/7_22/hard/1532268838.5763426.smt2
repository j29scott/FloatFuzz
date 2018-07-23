;  time  = 60
;  terms = 8
;  score = 60
;  stdout= timeout

(fp.leq (fp.rem (fp.rem x0 x1) (fp.add RNE (fp.rem x2 x1) (fp.div RNE x1 x0))) (fp.rem (fp.rem x2 (fp.neg x1)) (fp.max (fp.mul RNE x2 x1) (fp.fma RNE x0 x0 x1))))