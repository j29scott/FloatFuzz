;  time  = 60
;  terms = 13
;  score = 60
;  stdout= timeout

(fp.eq (fp.sub RNE (fp.rem x0 x2) (fp.rem x0 x1)) (fp.rem (fp.min x1 x2) (fp.mul RNE (fp.rem x1 x0) (fp.rem x2 x0))))