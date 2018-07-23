;  time  = 60
;  terms = 18
;  score = 60
;  stdout= timeout

(fp.lt (fp.fma RNE (fp.div RNE x0 x2) (fp.rem x2 x1) (fp.add RNE x1 x0)) (fp.rem (fp.rem x2 x1) (fp.rem x1 x2)))