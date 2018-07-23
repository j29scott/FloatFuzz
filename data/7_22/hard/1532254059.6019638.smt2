;  time  = 60
;  terms = 16
;  score = 60
;  stdout= timeout

(fp.gt (fp.rem (fp.rem x1 x2) (fp.fma RNE x1 x2 x2)) (fp.rem (fp.abs x2) (fp.mul RNE x0 x2)))