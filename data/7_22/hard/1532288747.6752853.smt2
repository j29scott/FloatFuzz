;  time  = 60
;  terms = 10
;  score = 60
;  stdout= timeout

(fp.lt (fp.min (fp.rem x1 (fp.rem x0 x2)) (fp.rem x2 x0)) (fp.rem (fp.abs x0) (fp.mul RNE (fp.mul RNE x0 x2) (fp.rem x0 x2))))