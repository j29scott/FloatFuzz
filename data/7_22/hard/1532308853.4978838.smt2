;  time  = 60
;  terms = 15
;  score = 60
;  stdout= timeout

(fp.eq (fp.sub RNE (fp.rem x1 (fp.rem x2 x1)) (fp.rem x1 x2)) (fp.max (fp.rem x2 x0) (fp.fma RNE x2 x2 x0)))