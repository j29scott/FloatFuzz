;  time  = 60
;  terms = 12
;  score = 60
;  stdout= timeout

(fp.leq (fp.add RNE (fp.rem x1 x2) (fp.mul RNE x2 x2)) (fp.rem (fp.rem x2 x1) (fp.mul RNE (fp.sub RNE x1 x0) (fp.add RNE x2 x1))))