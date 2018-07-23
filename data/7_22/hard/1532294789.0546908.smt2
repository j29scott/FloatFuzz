;  time  = 60
;  terms = 14
;  score = 60
;  stdout= timeout

(fp.eq (fp.div RNE (fp.rem x1 x1) (fp.rem x2 x1)) (fp.mul RNE (fp.rem x2 x0) (fp.rem x0 (fp.sub RNE x0 x1))))