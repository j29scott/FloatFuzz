;  time  = 60
;  terms = 14
;  score = 60
;  stdout= timeout

(fp.leq (fp.rem (fp.fma RNE x2 x0 x1) (fp.rem x2 (fp.sub RNE x1 x2))) (fp.rem (fp.rem x2 (fp.mul RNE x0 x2)) (fp.rem (fp.min x1 x2) (fp.rem x0 x1))))