;  time  = 60
;  terms = 12
;  score = 60
;  stdout= timeout

(fp.lt (fp.rem (fp.rem x1 x2) (fp.sub RNE (fp.rem x1 x2) (fp.fma RNE x2 x0 x2))) (fp.rem (fp.rem x0 x1) (fp.rem x2 x2)))