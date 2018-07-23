;  time  = 60
;  terms = 16
;  score = 60
;  stdout= timeout

(fp.eq (fp.abs (fp.rem x0 x0)) (fp.fma RNE (fp.rem x0 x2) (fp.rem x0 x2) (fp.mul RNE x1 x1)))