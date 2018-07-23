;  time  = 60
;  terms = 16
;  score = 60
;  stdout= timeout

(fp.leq (fp.div RNE (fp.rem x1 x1) (fp.rem x0 x2)) (fp.add RNE (fp.fma RNE x0 x1 x0) (fp.add RNE x0 x0)))