;  time  = 60
;  terms = 14
;  score = 60
;  stdout= timeout

(fp.eq (fp.add RNE (fp.rem x1 x2) (fp.rem x2 (fp.mul RNE x0 x0))) (fp.rem (fp.sub RNE x0 x1) (fp.max x2 x0)))