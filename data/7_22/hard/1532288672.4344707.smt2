;  time  = 60
;  terms = 11
;  score = 60
;  stdout= timeout

(fp.lt (fp.min (fp.rem x1 x2) (fp.rem x1 x1)) (fp.rem (fp.rem x0 (fp.rem x0 x1)) (fp.mul RNE (fp.rem x2 x1) (fp.add RNE x0 x1))))