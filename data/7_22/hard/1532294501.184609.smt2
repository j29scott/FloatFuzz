;  time  = 60
;  terms = 9
;  score = 60
;  stdout= timeout

(fp.gt (fp.rem (fp.rem x0 x2) (fp.rem (fp.add RNE x1 x2) (fp.fma RNE x2 x1 x0))) (fp.neg (fp.rem x0 x2)))