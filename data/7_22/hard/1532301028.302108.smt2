;  time  = 60
;  terms = 15
;  score = 60
;  stdout= timeout

(fp.eq (fp.mul RNE (fp.fma RNE x0 x0 x1) (fp.rem x1 x2)) (fp.rem (fp.max x2 x2) (fp.rem x1 (fp.sub RNE x0 x2))))