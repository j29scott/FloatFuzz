;  time  = 60
;  terms = 11
;  score = 60
;  stdout= timeout

(fp.isNaN (fp.fma RNE (fp.sub RNE x0 x2) (fp.rem x2 x0) (fp.div RNE x0 x2)))