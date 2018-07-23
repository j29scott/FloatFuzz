;  time  = 60
;  terms = 19
;  score = 60
;  stdout= timeout

(fp.geq (fp.fma RNE (fp.min x1 x2) (fp.rem x1 x0) (fp.fma RNE (fp.div RNE x2 x2) (fp.rem x0 x0) (fp.fma RNE x2 x0 x1))) (fp.fma RNE (fp.fma RNE x2 x1 (fp.fma RNE x2 x1 x0)) (fp.fma RNE x0 x1 (fp.rem x1 x2)) (fp.fma RNE x2 x1 x0)))