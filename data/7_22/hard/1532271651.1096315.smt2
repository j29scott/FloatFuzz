;  time  = 60
;  terms = 15
;  score = 60
;  stdout= timeout

(fp.gt (fp.rem (fp.rem x1 x0) (fp.rem x2 (fp.fma RNE x1 x2 x0))) (fp.rem (fp.sub RNE x0 x0) (fp.fma RNE x2 x2 x2)))