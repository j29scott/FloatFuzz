;  time  = 60
;  terms = 16
;  score = 60
;  stdout= timeout

(fp.geq (fp.fma RNE (fp.rem x1 x0) (fp.rem x2 (fp.max x2 x1)) (fp.rem x1 x2)) (fp.sub RNE (fp.rem x0 (fp.min x0 x1)) (fp.mul RNE x2 x0)))