;  time  = 60
;  terms = 14
;  score = 60
;  stdout= timeout

(fp.eq (fp.rem (fp.mul RNE x2 x1) (fp.rem x1 x2)) (fp.rem (fp.rem x0 (fp.fma RNE x0 x0 x2)) (fp.div RNE x1 x2)))