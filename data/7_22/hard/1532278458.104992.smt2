;  time  = 60
;  terms = 9
;  score = 60
;  stdout= timeout

(fp.eq (fp.rem (fp.rem x1 x1) (fp.rem (fp.rem x0 x1) (fp.fma RNE x2 x2 x0))) (fp.rem (fp.mul RNE x0 x1) (fp.neg (fp.rem x0 x0))))