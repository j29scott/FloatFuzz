;  time  = 60
;  terms = 21
;  score = 60
;  stdout= timeout

(fp.geq (fp.rem (fp.max x1 x2) (fp.rem x1 x1)) (fp.fma RNE (fp.rem x1 x0) (fp.rem x0 x1) (fp.mul RNE x1 x2)))