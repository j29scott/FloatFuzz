;  time  = 60
;  terms = 9
;  score = 60
;  stdout= timeout

(fp.eq (fp.neg (fp.rem x1 x2)) (fp.rem (fp.rem x1 x2) (fp.rem (fp.rem x1 x0) (fp.fma RNE x2 x1 x1))))