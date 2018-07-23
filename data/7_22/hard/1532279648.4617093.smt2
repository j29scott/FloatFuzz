;  time  = 60
;  terms = 12
;  score = 60
;  stdout= timeout

(fp.eq (fp.rem (fp.rem x1 x0) (fp.add RNE (fp.rem x0 x2) (fp.rem x2 x0))) (fp.sub RNE (fp.mul RNE x2 x0) (fp.min x1 x2)))