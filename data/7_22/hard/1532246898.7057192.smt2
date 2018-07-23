;  time  = 60
;  terms = 16
;  score = 60
;  stdout= timeout

(fp.eq (fp.div RNE (fp.fma RNE x1 x2 x2) (fp.mul RNE x1 x2)) (fp.sub RNE (fp.add RNE x2 x1) (fp.rem x0 x1)))