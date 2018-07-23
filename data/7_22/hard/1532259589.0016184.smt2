;  time  = 60
;  terms = 14
;  score = 60
;  stdout= timeout

(fp.leq (fp.fma RNE (fp.div RNE x2 x0) (fp.rem x1 (fp.rem x0 x0)) (fp.sub RNE x2 x1)) (fp.sqrt RNE (fp.rem x2 x2)))