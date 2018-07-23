;  time  = 60
;  terms = 13
;  score = 60
;  stdout= timeout

(fp.lt (fp.rem (fp.div RNE x0 x2) (fp.rem (fp.mul RNE x2 x2) (fp.rem x0 x1))) (fp.mul RNE (fp.min x1 x1) (fp.fma RNE x2 x2 x0)))