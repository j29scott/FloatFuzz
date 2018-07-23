;  time  = 60
;  terms = 11
;  score = 60
;  stdout= timeout

(fp.geq (fp.rem (fp.rem x1 x2) (fp.rem x1 (fp.fma RNE x0 x1 x0))) (fp.rem (fp.rem x0 x1) (fp.mul RNE (fp.rem x2 x2) (fp.max x2 x2))))