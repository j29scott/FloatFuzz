;  time  = 60
;  terms = 14
;  score = 60
;  stdout= timeout

(fp.geq (fp.mul RNE (fp.rem x1 x2) (fp.rem x2 x1)) (fp.rem (fp.rem x1 (fp.rem x2 x2)) (fp.rem x0 x1)))