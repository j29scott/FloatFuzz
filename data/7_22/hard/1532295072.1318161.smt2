;  time  = 60
;  terms = 14
;  score = 60
;  stdout= timeout

(fp.leq (fp.rem (fp.rem x1 x2) (fp.rem x2 x2)) (fp.mul RNE (fp.rem x2 (fp.rem x1 x1)) (fp.abs x1)))