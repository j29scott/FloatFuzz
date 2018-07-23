;  time  = 60
;  terms = 11
;  score = 60
;  stdout= timeout

(fp.lt (fp.mul RNE (fp.rem x0 x1) (fp.rem x2 (fp.max x1 x0))) (fp.neg (fp.mul RNE x2 x1)))