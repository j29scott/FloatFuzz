;  time  = 60
;  terms = 17
;  score = 60
;  stdout= timeout

(fp.lt (fp.fma RNE (fp.mul RNE x1 x2) (fp.rem x2 (fp.mul RNE x0 x2)) (fp.rem x1 (fp.mul RNE x2 x1))) (fp.rem (fp.rem x2 x0) (fp.rem x1 x1)))