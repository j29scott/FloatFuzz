;  time  = 60
;  terms = 10
;  score = 60
;  stdout= timeout

(fp.isNaN (fp.fma RNE (fp.rem x2 x2) (fp.rem x1 (fp.div RNE x0 x1)) (fp.div RNE x0 x2)))