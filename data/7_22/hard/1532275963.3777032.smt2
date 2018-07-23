;  time  = 60
;  terms = 15
;  score = 60
;  stdout= timeout

(fp.geq (fp.rem (fp.min x1 x2) (fp.rem x2 x1)) (fp.rem (fp.mul RNE x1 x0) (fp.abs (fp.rem x0 x1))))