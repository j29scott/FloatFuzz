;  time  = 60
;  terms = 13
;  score = 60
;  stdout= timeout

(fp.gt (fp.add RNE (fp.rem x0 (fp.rem x1 x2)) (fp.mul RNE x2 x1)) (fp.sub RNE (fp.add RNE x2 x1) (fp.rem x0 (fp.sub RNE x0 x2))))