;  time  = 60
;  terms = 10
;  score = 60
;  stdout= timeout

(fp.geq (fp.rem (fp.rem x1 (fp.rem x0 x0)) (fp.fma RNE (fp.mul RNE x2 x0) (fp.rem x1 x1) (fp.rem x1 x0))) (fp.rem (fp.sqrt RNE x0) (fp.min x1 x2)))