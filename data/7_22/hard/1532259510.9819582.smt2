;  time  = 60
;  terms = 13
;  score = 60
;  stdout= timeout

(fp.geq (fp.abs (fp.fma RNE x0 x1 x0)) (fp.mul RNE (fp.rem x2 x1) (fp.rem x1 x0)))