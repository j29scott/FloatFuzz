;  time  = 60
;  terms = 12
;  score = 60
;  stdout= timeout

(fp.eq (fp.div RNE (fp.div RNE x0 x1) (fp.add RNE (fp.mul RNE x2 x2) (fp.rem x0 x2))) (fp.div RNE (fp.rem x1 x2) (fp.div RNE x2 x2)))