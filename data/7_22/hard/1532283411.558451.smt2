;  time  = 60
;  terms = 18
;  score = 60
;  stdout= timeout

(fp.gt (fp.fma RNE (fp.neg x1) (fp.rem x0 x0) (fp.rem x0 (fp.rem x1 x2))) (fp.fma RNE (fp.rem x1 (fp.min x0 x2)) (fp.fma RNE x1 x0 x1) (fp.rem x0 (fp.mul RNE x0 x2))))