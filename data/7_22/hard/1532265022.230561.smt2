;  time  = 60
;  terms = 4
;  score = 60
;  stdout= timeout

(fp.isNegative (fp.div RNE (fp.rem x1 (fp.div RNE x2 x1)) (fp.fma RNE (fp.sub RNE x1 x1) (fp.rem x0 x1) (fp.rem x0 x2))))